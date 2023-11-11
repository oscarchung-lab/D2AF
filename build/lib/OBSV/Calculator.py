import OBSV.basis_functions as bf
import os
import time
import multiprocessing
from OBSV.Molecule import Molecule
import numpy as np

try:
    import mlatom as ml
except ImportError:
    print('Warning: no mlatom module')
    pass

try:
    from xtb.libxtb import VERBOSITY_FULL, VERBOSITY_MINIMAL, VERBOSITY_MUTED
    from xtb.interface import Calculator, Param
    xtbparm = Param.GFN2xTB
except ImportError:
    print('Warning: no xtb module')
    pass

try:
    import torch
    import torchani
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = None
except ImportError:
    print('Warning: no torchani module')
    pass

#try:
#    import mlatom as ml
#except ImportError:
#    print('Warning, no module mlatom')
#    pass


'''
Calculator:
    Gaussian: g03, g09, g16
    xTB: GFN1-xTB, GFN2-xTB
    ANI: ANI-1x, ANI-2x, ANI-1ccx
    MLatom: AIQM1
'''
Gauexe = 'g16'

def calculate_mols(mols,calculator,addpara=None):
    global device, model, Gauexe, xtbparm

    if calculator.lower() in ['g16', 'g09', 'g03']:
        Gauexe = calculator.lower()
        return calculate_mol_Gaussian(mols, addpara)
    elif calculator.lower() in ['xtb', 'gfn1-xtb','gfn2-xtb']:
        if calculator.lower() == 'xtb':
            xtbparm = Param.GFN2xTB
        elif calculator.lower() == 'gfn1-xtb':
            xtbparm = Param.GFN1xTB
        elif calculator.lower() == 'gfn2-xtb':
            xtbparm = Param.GFN2xTB
        else:
            raise ValueError('Unknown calculator: {}'.format(calculator))
        
        os.system('export OMP_NUM_THREADS=%d'% bf.ncpu)
        os.system('export MKL_NUM_THREADS=%d'% bf.ncpu)

        print('xTB computations begin at: '+time.asctime())
        pool = multiprocessing.Pool(processes=bf.pal)
        Esp = pool.map(calculate_mol_xTB,mols)
        pool.close()
        pool.join()
        print('xTB computations finish at: '+time.asctime())
        print('')
        return Esp
    elif calculator.lower() in ['aiqm1']:
        print(calculator.lower()+' computations of begin at: '+time.asctime())
        Esp = []
        for mol in mols:
            Esp.append(calculate_mol_mlatom(mol))
        print(calculator.lower()+' computations of finish at: '+time.asctime())
        print('')
        return Esp
    elif calculator.lower() in ['ani-1x', 'ani-2x','ani-1ccx']:
        if calculator.lower() == 'ani-2x':
            model = torchani.models.ANI2x(periodic_table_index=True).to(device).double()
        elif calculator.lower() == 'ani-1ccx':
            model = torchani.models.ANI1ccx(periodic_table_index=True).to(device).double()
        elif calculator.lower() == 'ani-1x':
            model = torchani.models.ANI1x(periodic_table_index=True).to(device).double()
        else:
            print('Error: Method not recognised, Using ANI2x instead')
            model = torchani.models.ANI2x(periodic_table_index=True).to(device).double()
        
        print(calculator.lower()+' computations of begin at: '+time.asctime())
        #pool = multiprocessing.Pool(processes=bf.pal)
        #Esp = pool.map(calculate_mol_ANI,mols)
        #pool.close()
        #pool.join()
        Esp = []
        for mol in mols:
            Esp.append(calculate_mol_ANI(mol))
        print(calculator.lower()+' computations of finish at: '+time.asctime())
        print('')
        
        return Esp
    else:
        raise ValueError('Unknown calculator: {}'.format(calculator))

'''
methods_map = {
    'aiqm1': ['AIQM1', 'AIQM1@DFT', 'AIQM1@DFT*'],
    'ani': ["ANI-1x", "ANI-1ccx", "ANI-2x", 'ANI-1x-D4', 'ANI-2x-D4'],
    'mndo': ['ODM2*', 'ODM2', 'ODM3', 'OM3', 'OM2', 'OM1', 'PM3', 'AM1', 'MNDO/d', 'MNDOC', 'MNDO', 'MINDO/3', 'CNDO/2', 'SCC-DFTB', 'SCC-DFTB-heats', 'MNDO/H', 'MNDO/dH'],
    'sparrow': ['DFTB0', 'DFTB2', 'DFTB3', 'MNDO', 'MNDO/d', 'AM1', 'RM1', 'PM3', 'PM6', 'OM2', 'OM3', 'ODM2*', 'ODM3*', 'AIQM1'],
    'xtb': ['GFN2-xTB'],
    'dftd4': ['D4'],
    'ccsdtstarcbs': ['CCSD(T)*/CBS'],
    'gaussian': [],
    'pyscf': [],
}
    
'''
def calculate_mol_mlatom(mol):
    aiqm1 = ml.models.methods(method='AIQM1')

    species = bf.eles2numbers(mol.elements)
    coordinates = mol.coordinates
    
    mol_aiqm1 = ml.data.molecule.from_numpy(coordinates, species)
    
    mol_aiqm1.charge = mol.charge
    mol_aiqm1.multiplicity = mol.spin
    
    aiqm1.predict(molecule=mol_aiqm1, calculate_energy=True) 

    return mol_aiqm1.energy
    
def calculate_mol_ANI(mol):
    global device, model
    if model is None:
        model = torchani.models.ANI2x(periodic_table_index=True).to(device).double()
    
    numbers = bf.eles2numbers(mol.elements)
    #positions = np.divide(mol.coordinates,bf.b2a)
    
    coordinates = torch.from_numpy(mol.coordinates).requires_grad_(True).unsqueeze(0)
    
    species = torch.from_numpy(numbers).unsqueeze(0)
    
    energy = model((species, coordinates)).energies
    
    return energy.item()

def calculate_mol_xTB(mol):
    numbers = bf.eles2numbers(mol.elements)
    positions = np.divide(mol.coordinates,bf.b2a)
    calc = Calculator(xtbparm, numbers, positions , charge = mol.charge, uhf = mol.spin)
    calc.set_verbosity(VERBOSITY_MUTED) 
    res = calc.singlepoint()
    return res.get_energy()


def calculate_mol_Gaussian(mols, addpara=None):
    mlines = addpara['mlines']
    if 'addlines' in addpara.keys():
        addlines = addpara['addlines']
    else: 
        addlines = []
    gjfnames = write_mols_gjf(mols, mlines, addlines)
    
    print('%d Gaussian '%len(mols)+ ' gjfs have been created!')
    print('Gaussian computations begin at: '+time.asctime())
    print('')
    
    #parallel computation for all gjfs
    pool = multiprocessing.Pool(processes=bf.pal)
    Esp = pool.map(RunGaussian,gjfnames)
    pool.close()
    pool.join()
    print('Gaussian computations finish at: '+time.asctime())
    print('')
    return Esp

def write_mols_gjf(mols, mlines, addlines=''):
    if os.path.exists('tmpdir'):
        pass
        #print('tmpdir already exits')
    else:
        os.mkdir('tmpdir')
        print("tmpdir has been created.")
    
    gjfnames = []
    for i, mol in enumerate(mols):

        name_i = os.path.join('tmpdir', mol.name+'.gjf')
        fw = open(name_i,'w')
        fw.write('%nprocshared='+str(bf.ncpu)+' \n')
        fw.write('%mem='+str(bf.ncpu)+'GB \n')
        for linetmp in mlines:
            fw.write(linetmp.replace('geom=connectivity',''))
        fw.write('\n')
        fw.write(name_i+' \n')
        fw.write('\n')
        fw.write('%d %d\n'%(mol.charge,mol.spin+1))
        elestmp = mol.elements
        coordtmp = mol.coordinates
        for j in range(mol.get_num_atoms()):
            fw.write('%-16s%14.8f%14.8f%14.8f \n'%(elestmp[j], coordtmp[j][0], coordtmp[j][1], coordtmp[j][2]))
        fw.write('\n')
        if addlines != '':
            fw.writelines(addlines)
        fw.write('\n')
        fw.close()
        gjfnames.append(name_i)
    return gjfnames

#run gaussian computation
def RunGaussian(gjfname):
    #print('Gauusian job('+gjfname+') starts at: '+time.asctime())
    ene_sp = 0.0
    name,tfile=os.path.splitext(gjfname)
    if os.path.exists(name+'.log'):
        print(name+'.log exsits, skipt the computation!')
        ene_sp = GetGaussiansp(name+'.log')
    else:
        os.system(Gauexe+' < '+gjfname+'> '+name+'.log')
        ene_sp = GetGaussiansp(name+'.log')
    #print('Gauusian job('+gjfname+') ends at: '+time.asctime())
    return ene_sp

#get gaussian energy
def GetGaussiansp(outname):
    fr = open(outname,"r") 
    lines = fr.readlines()
    fr.close()
    index_of_energy = []
    index_of_ext_energy = []
    i = 0
    errlines = []
    for line in lines:
        if "SCF Done:" in line:
            index_of_energy.append(i)
        if "Recovered energy" in line:
            index_of_ext_energy.append(i)
        if 'Error' in line:
            errlines.append(line)
        i= i+1
    try:
        loc = int(index_of_energy[-1])
        energy = lines[loc].split()[4]
        return float(energy)           
    except IndexError:
        try:
            loc = int(index_of_ext_energy[-1])
            energy = lines[loc].split()[2]
            return float(energy)
        except IndexError:
            print('Energy not found in %s file!'%outname)              #help check the bug   
            print(errlines)
            print('')


