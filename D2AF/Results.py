import os
import pandas as pd
import copy
from D2AF import inputs
import D2AF.basis_functions as bf
import numpy as np
import sys
import math
from D2AF.Molecule import Molecule
import logging 

logger = logging.getLogger('main.Results')

iflog = False
#math.e, 10 ...
lognum = 10.0


def xlsx2pml(method, mol_file, xlsx):
    xls = pd.ExcelFile(xlsx)
    sheet_names = xls.sheet_names
    if method == 1:        
        if len(sheet_names) == 1:
            df = pd.read_excel(xlsx, sheet_name='fragcut',index_col=0)

            atomsstr = df['fragatoms'].tolist()
            strainstr = df['Dist. E (kcal/mol)'].tolist()
            fraglist = [bf.str2list(str) for str in atomsstr]
            strain = [float(x) for x in strainstr]
            
            write_mol_frag_pml(mol_file,fraglist,strain)
        else:
            logger.critical('There are %d sheets in %s!\n'%(len(sheet_names), xlsx))
            mol_name = mol_file.split('.')[0]
            
            strain_frags = []
            for i in range(len(sheet_names)):
                df = pd.read_excel(xlsx, sheet_name='fragcut_%d'%i,index_col=0)
                atomsstr = df['fragatoms'].tolist()
                strainstr = df['Dist. E (kcal/mol)'].tolist()
                
                fraglist = [bf.str2list(str) for str in atomsstr]
                strain = [float(x) for x in strainstr]
                
                strain_frags.append(strain)
            
            minene, maxene = get_max_min(fraglist, [], strain_frags, [])
            
            for i in range(len(sheet_names)):
                mol_file_i = mol_name+'_%d.xyz'%i
                write_mol_frag_pml(mol_file_i,fraglist,strain_frags[i],maxene=maxene, minene=minene)
        
    elif method == 2:
        if len(sheet_names) == 1:
            df = pd.read_excel(xlsx, sheet_name='intcoord',index_col=0)
            atomsstr = df['atoms'].tolist()
            strainstr = df['Dist. E (kcal/mol)'].tolist()
            deltastr = df['delta'].tolist()

            internals = [bf.str2list(str) for str in atomsstr]
            strain = [float(x) for x in strainstr]
            delta = [float(x) for x in deltastr]

            write_mol_bondcut_pml(mol_file, internals, strain, delta)
        else:
            logger.critical('There are %d sheets in %s!\n'%(len(sheet_names), xlsx))
            mol_name = mol_file.split('.')[0]
            
            strain_bondcut = []
            delta_bondcut = []
            for i in range(len(sheet_names)):
                df = pd.read_excel(xlsx, sheet_name='intcoord_%d'%i,index_col=0)
                atomsstr = df['atoms'].tolist()
                strainstr = df['Dist. E (kcal/mol)'].tolist()
                deltastr = df['delta'].tolist()

                internals = [bf.str2list(str) for str in atomsstr]
                strain = [float(x) for x in strainstr]
                delta = [float(x) for x in deltastr]
                
                strain_bondcut.append(strain)
                delta_bondcut.append(delta)
                
            minene, maxene = get_max_min([], internals, [], strain_bondcut)
            mindelta, maxdelta = get_max_min_delta(internals, delta_bondcut)
            
            for i in range(len(sheet_names)):
                mol_file_i = mol_name+'_%d.xyz'%i
                write_mol_bondcut_pml(mol_file_i,internals,strain_bondcut[i],delta_bondcut[i],maxene=maxene, minene=minene,mindelta=mindelta,maxdelta=maxdelta)
            
    elif method == 3:
        if len(sheet_names) == 2:
            df1 = pd.read_excel(xlsx, sheet_name='intcoord',index_col=0)
            df2 = pd.read_excel(xlsx, sheet_name='fragcut',index_col=0)
            atomsstr = df1['atoms'].tolist()
            strainstr = df1['Dist. E (kcal/mol)'].tolist()
            deltastr = df1['delta'].tolist()

            internals = [bf.str2list(str) for str in atomsstr]
            strain = [float(x) for x in strainstr]
            delta = [float(x) for x in deltastr]

            frag_str = df2['fragatoms'].tolist()
            frag_strainstr = df2['Dist. E (kcal/mol)'].tolist()

            fraglist = [bf.str2list(str) for str in frag_str]
            frag_strain = [float(x) for x in frag_strainstr]

            write_mol_bondcutfrag_pml(mol_file, internals, strain, delta, fraglist, frag_strain)
        else:
            logger.critical('There are %d sheets in %s!\n'%(len(sheet_names), xlsx))
            num_mol = int(len(sheet_names)/2)
            mol_name = mol_file.split('.')[0]
            
            strain_bondcut = []
            delta_bondcut = []
            strain_frags = []
            for i in range(num_mol):
                df1 = pd.read_excel(xlsx, sheet_name='intcoord_%d'%i,index_col=0)
                df2 = pd.read_excel(xlsx, sheet_name='fragcut_%d'%i,index_col=0)
                atomsstr = df1['atoms'].tolist()
                strainstr = df1['Dist. E (kcal/mol)'].tolist()
                deltastr = df1['delta'].tolist()

                internals = [bf.str2list(str) for str in atomsstr]
                strain = [float(x) for x in strainstr]
                delta = [float(x) for x in deltastr]

                frag_str = df2['fragatoms'].tolist()
                frag_strainstr = df2['Dist. E (kcal/mol)'].tolist()
                
                fraglist = [bf.str2list(str) for str in frag_str]
                frag_strain = [float(x) for x in frag_strainstr]
                
                strain_bondcut.append(strain)
                delta_bondcut.append(delta)
                strain_frags.append(frag_strain)
                
            minene, maxene = get_max_min(fraglist, internals, strain_frags, strain_bondcut)
            
            mindelta, maxdelta = get_max_min_delta(internals, delta_bondcut)
            for i in range(num_mol):  
                mol_file_i = mol_name+'_%d.xyz'%i
                write_mol_bondcutfrag_pml(mol_file_i, internals, strain_bondcut[i],delta_bondcut[i], fraglist, strain_frags[i],maxene=maxene, minene=minene,mindelta=mindelta,maxdelta=maxdelta)
    else:
        logger.critical('method number %d not supported!'%method)
#pair frag_id and energy based on xyz file computed by user
#index conformer id
def Get_deltaE(frag_id, ene_dict, method, index):
    strainE = [0.0] * len(frag_id)
    for i in range(len(frag_id)):
        frag_index = frag_id[i].split('_')[-1]
        refkeystr = '%s_ref_%s'% (method, frag_index)
        confkeystr = '%s_conf_%d_%s'% (method, index, frag_index)
        strainE[i] = (ene_dict[confkeystr] - ene_dict[refkeystr])*627.51
    return strainE

def update_xlsx_ene(method, xlsx, ene_dat):
    xls = pd.ExcelFile(xlsx)
    sheet_names = xls.sheet_names
    ene_dict = bf.read_E_dat(ene_dat)
    writer = pd.ExcelWriter('new_'+xlsx)
    if method == 1:
        if len(sheet_names) == 1:
            df = pd.read_excel(xlsx, sheet_name='fragcut')
            frag_id = df['frag_id'].tolist()
            atomsstr = df['fragatoms'].tolist()
            strain = Get_deltaE(frag_id, ene_dict, 'M1', 0)
            strain_ene = np.around(np.array(strain),2) 
            df = pd.DataFrame({'frag_id':frag_id,'fragatoms':atomsstr,'Dist. E (kcal/mol)':strain_ene})
            df.to_excel(writer, sheet_name="fragcut", index=False)
            writer.close()
        else:
            for j in range(len(sheet_names)):
                df = pd.read_excel(xlsx, sheet_name="fragcut_%d"%j)
                frag_id = df['frag_id'].tolist()
                atomsstr = df['fragatoms'].tolist()
                strain = Get_deltaE(frag_id, ene_dict, 'M1', j)

                strain_ene = np.around(np.array(strain),2) 
                df = pd.DataFrame({'frag_id':frag_id,'fragatoms':atomsstr,'Dist. E (kcal/mol)':strain_ene})
                df.to_excel(writer, sheet_name="fragcut_%d"%j, index=False)
            writer.close()
    elif method == 2:
        if len(sheet_names) == 1:
            df = pd.read_excel(xlsx, sheet_name='intcoord')
            frag_id = df['frag_id'].tolist()
            idlist = df['ID'].tolist()
            atomsstr = df['atoms'].tolist()
            delta = df['delta'].tolist()
            strain = Get_deltaE(frag_id, ene_dict, 'M2', 0)

            strain_ene = np.around(np.array(strain),2) 
            df = pd.DataFrame({'frag_id':frag_id,'ID':idlist,'atoms':atomsstr,'Dist. E (kcal/mol)':strain_ene,'delta':delta })
            df.to_excel(writer, sheet_name="intcoord", index=False)
            writer.close()
        else:
            for j in range(len(sheet_names)):
                df = pd.read_excel(xlsx, sheet_name="intcoord_%d"%j)
                frag_id = df['frag_id'].tolist()
                idlist = df['ID'].tolist()
                atomsstr = df['atoms'].tolist()
                delta = df['delta'].tolist()
                strain = Get_deltaE(frag_id, ene_dict, 'M2', j)

                strain_ene = np.around(np.array(strain),2) 
                df = pd.DataFrame({'frag_id':frag_id,'ID':idlist,'atoms':atomsstr,'Dist. E (kcal/mol)':strain_ene,'delta':delta })
                df.to_excel(writer, sheet_name="intcoord_%d"%j, index=False)
            writer.close()
    elif method == 3:
        writer = pd.ExcelWriter('new_'+xlsx)
        if len(sheet_names) == 2:
            #internal coord sheet
            df = pd.read_excel(xlsx, sheet_name='intcoord')
            frag_id = df['frag_id'].tolist()
            idlist = df['ID'].tolist()
            atomsstr = df['atoms'].tolist()
            delta = df['delta'].tolist()
            strain = Get_deltaE(frag_id, ene_dict, 'M3', 0)

            strain_ene = np.around(np.array(strain),2) 
            
            df = pd.DataFrame({'frag_id':frag_id,'ID':idlist,'atoms':atomsstr,'Dist. E (kcal/mol)':strain_ene,'delta':delta })
            df.to_excel(writer, sheet_name="intcoord", index=False)

            #fragcut sheet
            df = pd.read_excel(xlsx, sheet_name='fragcut')
            frag_id = df['frag_id'].tolist()
            atomsstr = df['fragatoms'].tolist()
            strain = Get_deltaE(frag_id, ene_dict, 'M3_frag', 0)

            strain_ene = np.around(np.array(strain),2) 
            df = pd.DataFrame({'frag_id':frag_id,'fragatoms':atomsstr,'Dist. E (kcal/mol)':strain_ene})
            df.to_excel(writer, sheet_name="fragcut", index=False)

            writer.close()
        else:
            writer = pd.ExcelWriter('new_'+xlsx)

            for j in range(len(sheet_names)):
                #internal coord sheet
                df = pd.read_excel(xlsx, sheet_name="intcoord_%d"%j)
                frag_id = df['frag_id'].tolist()
                idlist = df['ID'].tolist()
                atomsstr = df['atoms'].tolist()
                delta = df['delta'].tolist()
                strain = Get_deltaE(frag_id, ene_dict, 'M3', j)

                strain_ene = np.around(np.array(strain),2) 
                
                df = pd.DataFrame({'frag_id':frag_id,'ID':idlist,'atoms':atomsstr,'Dist. E (kcal/mol)':strain_ene,'delta':delta })
                df.to_excel(writer, sheet_name="intcoord_%d"%j, index=False)

                #fragcut sheet
                df = pd.read_excel(xlsx, sheet_name="fragcut_%d"%j)
                frag_id = df['frag_id'].tolist()
                atomsstr = df['fragatoms'].tolist()
                strain = Get_deltaE(frag_id, ene_dict, 'M3_frag', j)

                strain_ene = np.around(np.array(strain),2) 
                df = pd.DataFrame({'frag_id':frag_id,'fragatoms':atomsstr,'Dist. E (kcal/mol)':strain_ene})
                df.to_excel(writer, sheet_name="fragcut_%d"%j, index=False)
            writer.close()
    else:
        logger.critical('method number %d not supported!'%method)
    os.replace('new_'+xlsx, xlsx) 

# get mim and max for multiconfomer strain energy 
def get_max_min(fraglist, bondcutlist, frag_enelist, bondcut_enelist):
    min_ene = []
    max_ene = []
    if len(fraglist) == [] and len(bondcutlist) != []:
        for i in range(len(bondcut_enelist)):
            min_i, max_i = get_bondangle(bondcutlist, bondcut_enelist[i])
            min_ene.append(min_i)
            max_ene.append(max_i)
    elif len(fraglist) != [] and len(bondcutlist) == []:
        for i in range(len(frag_enelist)):
            min_ene.append(min(frag_enelist[i]))
            max_ene.append(max(frag_enelist[i]))
    elif len(fraglist) != [] and len(bondcutlist) != []:
        for i in range(len(bondcut_enelist)):
            min_i, max_i = get_bondangle(bondcutlist, bondcut_enelist[i])
            min_ene.append(min_i)
            max_ene.append(max_i)
        for i in range(len(frag_enelist)):
            min_ene.append(min(frag_enelist[i]))
            max_ene.append(max(frag_enelist[i]))

    return min(min_ene), max(max_ene)

# get mim and max for multiconfomer delta 
def get_max_min_delta(bondcutlist, bondcut_deltalist):
    min_delta = []
    max_delta = []
    for i in range(len(bondcut_deltalist)):
        min_i, max_i = get_bondangle_delta(bondcutlist, bondcut_deltalist[i])
        min_delta.append(min_i)
        max_delta.append(max_i)

    return min(min_delta), max(max_delta)

def get_bondangle_delta(bondcutlist, bondcut_delta):
    bond_delta = []
    angle_delta = []
    torsion_delta = []

    for i, atoms_labes in enumerate(bondcutlist):
        if len(atoms_labes) == 2: #bond
            bond_delta.append(bondcut_delta[i])
        elif len(atoms_labes) == 3: #angle
            angle_delta.append(bondcut_delta[i])
        elif len(atoms_labes) == 4: #torsion
            torsion_delta.append(bondcut_delta[i])
        else: #problem
            logger.error('Error: Please check the atoms number > 4')
            sys.exit()
            
    return min(bond_delta), max(bond_delta)

def get_bondangle(bondcutlist, bondcut_ene):
    bond_ene = {}
    angle_ene = {}
    torsion_ene = {}
    total_ene = {}
    for i, atoms_labes in enumerate(bondcutlist):
        if len(atoms_labes) == 2: #bond
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            bond_ene[(min(a1,a2),max(a1,a2))] = float(bondcut_ene[i])
        elif len(atoms_labes) == 3: #angle
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            a3 = int(atoms_labes[2])+1
            if (min(a1,a2),max(a1,a2)) in angle_ene.keys():
                enetmp = angle_ene[(min(a1,a2),max(a1,a2))]
                angle_ene[(min(a1,a2),max(a1,a2))] = enetmp + float(bondcut_ene[i])/2
            else:
                angle_ene[(min(a1,a2),max(a1,a2))] = float(bondcut_ene[i])/2
            if (min(a2,a3),max(a2,a3)) in angle_ene.keys():
                enetmp = angle_ene[(min(a2,a3),max(a2,a3)) ]
                angle_ene[(min(a2,a3),max(a2,a3)) ] = enetmp + float(bondcut_ene[i])/2
            else:
                angle_ene[(min(a2,a3),max(a2,a3)) ] = float(bondcut_ene[i])/2
                
        elif len(atoms_labes) == 4: #torsion
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            a3 = int(atoms_labes[2])+1
            a4 = int(atoms_labes[3])+1
            
            #dihedral/1 center bond
            if (min(a2,a3),max(a2,a3)) in torsion_ene.keys():
                enetmp = torsion_ene[(min(a2,a3),max(a2,a3)) ]
                torsion_ene[(min(a2,a3),max(a2,a3)) ] = enetmp + float(bondcut_ene[i])
            else:
                torsion_ene[(min(a2,a3),max(a2,a3)) ] = float(bondcut_ene[i])
                
            #dihedral/3  
            #if (min(a1,a2),max(a1,a2)) in torsion_ene.keys():
            #    enetmp = torsion_ene[(min(a1,a2),max(a1,a2))]
            #    torsion_ene[(min(a1,a2),max(a1,a2))] = enetmp + float(bondcut_ene[i])/3
            #else:
            #    torsion_ene[(min(a1,a2),max(a1,a2))] = float(bondcut_ene[i])/3
            #if (min(a2,a3),max(a2,a3)) in torsion_ene.keys():
            #    enetmp = torsion_ene[(min(a2,a3),max(a2,a3)) ]
            #    torsion_ene[(min(a2,a3),max(a2,a3)) ] = enetmp + float(bondcut_ene[i])/3
            #else:
            #    torsion_ene[(min(a2,a3),max(a2,a3)) ] = float(bondcut_ene[i])/3
            #
            #if (min(a3,a4),max(a3,a4)) in torsion_ene.keys():
            #    enetmp = torsion_ene[(min(a3,a4),max(a3,a4)) ]
            #    torsion_ene[(min(a3,a4),max(a3,a4)) ] = enetmp + float(bondcut_ene[i])/3
            #else:
            #    torsion_ene[(min(a3,a4),max(a3,a4)) ] = float(bondcut_ene[i])/3
        else: #problem
            logger.error('Error: Please check the atoms number > 4')
            sys.exit()
            
            
            
    total_ene = copy.deepcopy(bond_ene)
    for keytmp in angle_ene.keys():
        if keytmp in total_ene.keys():
            enetmp = total_ene[keytmp]
            total_ene[keytmp] = enetmp + angle_ene[keytmp]
        else:
            total_ene[keytmp] = angle_ene[keytmp]
            
    for keytmp in torsion_ene.keys():
        if keytmp in total_ene.keys():
            enetmp = total_ene[keytmp]
            total_ene[keytmp] = enetmp + torsion_ene[keytmp]
        else:
            total_ene[keytmp] = torsion_ene[keytmp]
            
    maxb = max(list(bond_ene.values())+[-999])
    maxa = max(list(angle_ene.values())+[-999])
    maxt = max(total_ene.values())

    minb = min(list(bond_ene.values())+[999])
    mina = min(list(angle_ene.values())+[999])
    mint = min(total_ene.values())
    
    min_energy = min(minb,mina,mint)
    max_energy = max(maxb,maxa,maxt)
    return min_energy, max_energy

#save the fragmentation strain energy into xlsx
def fragresult2xlsx(fraglist,strain,name=''):
    frag_id = []
    atom_str = []
    for i, frag_i in enumerate(fraglist):
        atom_str.append(bf.list2str(frag_i))
        frag_id.append('frag_%d'%i)

    strain_ene = np.around(np.array(strain),2) 
    writer = pd.ExcelWriter(bf.jobname+'_M1'+name+'.xlsx')
    df = pd.DataFrame({'frag_id':frag_id,'fragatoms':atom_str,'Dist. E (kcal/mol)':strain_ene})
    df.to_excel(writer, sheet_name="fragcut", index=False)
    writer.close()

    logger.critical('')
    logger.critical('*************** Resutls:***************')
    logger.critical('Distortion energies are saved in '+bf.jobname+'_M1'+name+'.xlsx \n')
        
    logger.info("\n%s", df.to_string())
    
#save the fragmentation strain energy into xlsx (conformers case)
def fragresults2xlsx(fraglist,strain_all,name=''):
    frag_id = []
    atom_str = []
    for i, frag_i in enumerate(fraglist):
        atom_str.append(bf.list2str(frag_i))
        frag_id.append('frag_%d'%i)

    writer = pd.ExcelWriter(bf.jobname+'_M1'+name+'.xlsx')
    for j, strain in enumerate(strain_all):

        strain_ene = np.around(np.array(strain),2) 
        
        df = pd.DataFrame({'frag_id':frag_id,'fragatoms':atom_str,'Dist. E (kcal/mol)':strain_ene})
        df.to_excel(writer, sheet_name="fragcut_%d"%j, index=False)
    writer.close()
    
    logger.critical('Distortion energies of multiple conformers (%d) are saved in '%len(strain_all)+bf.jobname+'_M1_'+name+'.xlsx\n')
          
    logger.info("\n%s", df.to_string())

#save the bondcut strain energy into xlsx
def bondcutresult2xlsx(internal_list,strain,delta_values,name=''):
    #delta_values = delta_internal_values(refValues,confValues)
    Bid, Batoms, Bstrain, deltaB = [],[],[],[]
    Aid, Aatoms, Astrain, deltaA = [],[],[],[]
    Did, Datoms, Dstrain, deltaD = [],[],[],[]
    numa = 0
    numb = 0
    numd = 0
    frag_idA = []
    frag_idB = []
    frag_idD = []
    for i, intercoord in enumerate(internal_list):
        if len(intercoord) == 2: #bond
            numb += 1
            Bid.append('B%-d'%numb)
            Batoms.append(bf.list2str(intercoord))
            Bstrain.append(strain[i])
            deltaB.append(delta_values[i])
            frag_idB.append('intcoord_%d'%i)
        elif len(intercoord) == 3: #angle
            numa += 1
            Aid.append('A%-d'%numa)
            Aatoms.append(bf.list2str(intercoord))
            Astrain.append(strain[i])
            deltaA.append(delta_values[i])
            frag_idA.append('intcoord_%d'%i)
        elif len(intercoord) == 4: #torsion
            numd += 1
            Did.append('D%-d'%numd)
            Datoms.append(bf.list2str(intercoord))
            Dstrain.append(strain[i])
            deltaD.append(delta_values[i])
            frag_idD.append('intcoord_%d'%i)
            
    Bstrain_ene = np.around(np.array(Bstrain),2)   
    Astrain_ene = np.around(np.array(Astrain),2) 
    Dstrain_ene = np.around(np.array(Dstrain),2) 

    deltaB_len = np.around(np.array(deltaB),2) 
    deltaA_ang = np.around(np.array(deltaA),1) 
    deltaD_tor = np.around(np.array(deltaD),1) 

    idlist = Bid+Aid+Did
    atoms = Batoms+Aatoms+Datoms
    strain_AB = list(Bstrain_ene) + list(Astrain_ene) + list(Dstrain_ene)
    delta_AB = list(deltaB_len) + list(deltaA_ang) + list(deltaD_tor)
    frag_id = frag_idB + frag_idA + frag_idD
    writer = pd.ExcelWriter(bf.jobname+'_M2'+name+'.xlsx')
    df = pd.DataFrame({'frag_id':frag_id,'ID':idlist,'atoms':atoms,'Dist. E (kcal/mol)':strain_AB,'delta':delta_AB })
    df.to_excel(writer, sheet_name="intcoord", index=False)
    writer.close()
    logger.critical('')
    logger.critical('*************** Resutls:***************')

    logger.critical('Distortion energies are saved in '+bf.jobname+'_M2'+name+'.xlsx\n')
        
    logger.info("\n%s", df.to_string())


#save the bondcut strain energy into xlsx (conformers case)
def bondcutresults2xlsx(internal_list,strain_all,delta_values_all,name=''):
    writer = pd.ExcelWriter(bf.jobname+'_M2'+name+'.xlsx')
    for j, strain in enumerate(strain_all):
        delta_values = delta_values_all[j]
        
        Bid, Batoms, Bstrain, deltaB = [],[],[],[]
        Aid, Aatoms, Astrain, deltaA = [],[],[],[]
        Did, Datoms, Dstrain, deltaD = [],[],[],[]
        numa = 0
        numb = 0
        numd = 0
        frag_idA = []
        frag_idB = []
        frag_idD = []
        for i, intercoord in enumerate(internal_list):
            if len(intercoord) == 2: #bond
                numb += 1
                Bid.append('B%-d'%numb)
                Batoms.append(bf.list2str(intercoord))
                Bstrain.append(strain[i])
                deltaB.append(delta_values[i])
                frag_idB.append('intcoord_%d'%i)
            elif len(intercoord) == 3: #angle
                numa += 1
                Aid.append('A%-d'%numa)
                Aatoms.append(bf.list2str(intercoord))
                Astrain.append(strain[i])
                deltaA.append(delta_values[i])
                frag_idA.append('intcoord_%d'%i)
            elif len(intercoord) == 4: #torsion
                numd += 1
                Did.append('D%-d'%numd)
                Datoms.append(bf.list2str(intercoord))
                Dstrain.append(strain[i])
                deltaD.append(delta_values[i])
                frag_idD.append('intcoord_%d'%i)
                
        Bstrain_ene = np.around(np.array(Bstrain),2)   
        Astrain_ene = np.around(np.array(Astrain),2) 
        Dstrain_ene = np.around(np.array(Dstrain),2)

        deltaB_len = np.around(np.array(deltaB),2) 
        deltaA_ang = np.around(np.array(deltaA),1) 
        deltaD_tor = np.around(np.array(deltaD),1) 

        idlist = Bid+Aid+Did
        atoms = Batoms+Aatoms+Datoms
        strain_AB = list(Bstrain_ene) + list(Astrain_ene) + list(Dstrain_ene)
        delta_AB = list(deltaB_len) + list(deltaA_ang) + list(deltaD_tor)
        frag_id = frag_idB + frag_idA + frag_idD
        
        df = pd.DataFrame({'frag_id':frag_id,'ID':idlist,'atoms':atoms,'Dist. E (kcal/mol)':strain_AB,'delta':delta_AB })
        df.to_excel(writer, sheet_name="intcoord_%d"%j, index=False)
    writer.close()
    logger.critical('Distortion energies of multiple conformers (%d) are saved in '%len(strain_all)+bf.jobname+'_M2'+name+'.xlsx\n')
        
  
    
#save the bondcut strain energy into xlsx
def bondcutfragresult2xlsx(internal_list,strain,delta_values,fraglist,strain_frag,name=''):
    #delta_values = bf.delta_internal_values(refValues,confValues)
    Bid, Batoms, Bstrain, deltaB = [],[],[],[]
    Aid, Aatoms, Astrain, deltaA = [],[],[],[]
    Did, Datoms, Dstrain, deltaD = [],[],[],[]
    numa = 0
    numb = 0
    numd = 0
    bondcut_idA = []
    bondcut_idB = []
    bondcut_idD = []
    for i, intercoord in enumerate(internal_list):
        if len(intercoord) == 2: #bond
            numb += 1
            Bid.append('B%-d'%numb)
            Batoms.append(bf.list2str(intercoord))
            Bstrain.append(strain[i])
            deltaB.append(delta_values[i])
            bondcut_idB.append('intcoord_%d'%i)
        elif len(intercoord) == 3: #angle
            numa += 1
            Aid.append('A%-d'%numa)
            Aatoms.append(bf.list2str(intercoord))
            Astrain.append(strain[i])
            deltaA.append(delta_values[i])
            bondcut_idA.append('intcoord_%d'%i)
        elif len(intercoord) == 4: #angle
            numd += 1
            Did.append('D%-d'%numd)
            Datoms.append(bf.list2str(intercoord))
            Dstrain.append(strain[i])
            deltaD.append(delta_values[i])
            bondcut_idD.append('intcoord_%d'%i)
            
    Bstrain_ene = np.around(np.array(Bstrain),2)   
    Astrain_ene = np.around(np.array(Astrain),2) 
    Dstrain_ene = np.around(np.array(Dstrain),2) 

    deltaB_len = np.around(np.array(deltaB),2) 
    deltaA_ang = np.around(np.array(deltaA),1) 
    deltaD_tor = np.around(np.array(deltaD),1) 

    idlist = Bid+Aid+Did
    atoms = Batoms+Aatoms+Datoms
    strain_AB = list(Bstrain_ene) + list(Astrain_ene) + list(Dstrain_ene)
    delta_AB = list(deltaB_len) + list(deltaA_ang) + list(deltaD_tor)
    bondcut_id = bondcut_idB + bondcut_idA + bondcut_idD

    writer = pd.ExcelWriter(bf.jobname+'_M3'+name+'.xlsx')
    df = pd.DataFrame({'frag_id':bondcut_id,'ID':idlist,'atoms':atoms,'Dist. E (kcal/mol)':strain_AB,'delta':delta_AB })
    df.to_excel(writer, sheet_name="intcoord", index=False)
    
    logger.critical('')
    logger.critical('*************** Resutls:***************')
    logger.critical('Distortion energies are saved in '+bf.jobname+'_M3'+name+'.xlsx\n')

    logger.info('## Distortion energies of internal coordinates ##')
    logger.info("\n%s", df.to_string())    
    logger.info('')
    #frag
    frag_id = []
    atom_str = []
    for i, frag_i in enumerate(fraglist):
        atom_str.append(bf.list2str(frag_i))
        frag_id.append('frag_%d'%i)

    strain_ene = np.around(np.array(strain_frag),2) 
    df = pd.DataFrame({'frag_id':frag_id,'fragatoms':atom_str,'Dist. E (kcal/mol)':strain_ene})
    df.to_excel(writer, sheet_name="fragcut", index=False)

    writer.close()

    logger.info('## Strain energies of fragments ##')
    logger.info("\n%s", df.to_string())    
    logger.info('')

#save the bondcut strain energy into xlsx (conformers case)
def bondcutfragresults2xlsx(internal_list,strain_all,delta_values_all,fraglist,strain_frag_all,name=''):
    writer = pd.ExcelWriter(bf.jobname+'_M3'+name+'.xlsx')
    
    #frag
    frag_id = []
    atom_str = []
    for i, frag_i in enumerate(fraglist):
        atom_str.append(bf.list2str(frag_i))
        frag_id.append('frag_%d'%i)
            
    for j, strain in enumerate(strain_all):
        delta_values = delta_values_all[j]
        Bid, Batoms, Bstrain, deltaB = [],[],[],[]
        Aid, Aatoms, Astrain, deltaA = [],[],[],[]
        Did, Datoms, Dstrain, deltaD = [],[],[],[]
        numa = 0
        numb = 0
        numd = 0
        bondcut_idA = []
        bondcut_idB = []
        bondcut_idD = []
        for i, intercoord in enumerate(internal_list):
            if len(intercoord) == 2: #bond
                numb += 1
                Bid.append('B%-d'%numb)
                Batoms.append(bf.list2str(intercoord))
                Bstrain.append(strain[i])
                deltaB.append(delta_values[i])
                bondcut_idB.append('intcoord_%d'%i)
            elif len(intercoord) == 3: #angle
                numa += 1
                Aid.append('A%-d'%numa)
                Aatoms.append(bf.list2str(intercoord))
                Astrain.append(strain[i])
                deltaA.append(delta_values[i])
                bondcut_idA.append('intcoord_%d'%i)
            elif len(intercoord) == 4: #angle
                numd += 1
                Did.append('D%-d'%numd)
                Datoms.append(bf.list2str(intercoord))
                Dstrain.append(strain[i])
                deltaD.append(delta_values[i])
                bondcut_idD.append('intcoord_%d'%i)

        Bstrain_ene = np.around(np.array(Bstrain),2)   
        Astrain_ene = np.around(np.array(Astrain),2) 
        Dstrain_ene = np.around(np.array(Dstrain),2) 

        deltaB_len = np.around(np.array(deltaB),2) 
        deltaA_ang = np.around(np.array(deltaA),1) 
        deltaD_tor = np.around(np.array(deltaD),1) 

        idlist = Bid+Aid+Did
        atoms = Batoms+Aatoms+Datoms
        strain_AB = list(Bstrain_ene) + list(Astrain_ene) + list(Dstrain_ene)
        delta_AB = list(deltaB_len) + list(deltaA_ang) + list(deltaD_tor)
        bondcut_id = bondcut_idB + bondcut_idA + bondcut_idD

        
        df = pd.DataFrame({'frag_id':bondcut_id,'ID':idlist,'atoms':atoms,'Dist. E (kcal/mol)':strain_AB,'delta':delta_AB })
        df.to_excel(writer, sheet_name="intcoord_%d"%j, index=False)
        
        

        strain_ene = np.around(np.array(strain_frag_all[j]),2) 
        df = pd.DataFrame({'frag_id':frag_id,'fragatoms':atom_str,'Dist. E (kcal/mol)':strain_ene})
        df.to_excel(writer, sheet_name="fragcut_%d"%j, index=False)

    writer.close()

    logger.critical('Distortion energies of multiple conformers (%d) are saved in '%len(strain_all)*2+bf.jobname+'_M3'+name+'.xlsx\n')
    
    
def molecule2xyz(mol,molname):
    eles = mol.elements
    coord = mol.coordinates
    fw = open(molname,'w')
    fw.write('%d \n'%mol.get_num_atoms())
    fw.write('\n')
    for i in range(mol.get_num_atoms()):
        fw.write('%-16s%14.8f%14.8f%14.8f \n'%(eles[i],coord[i][0],coord[i][1],coord[i][2]))
    fw.write('\n')
    fw.close()
#### bond cut functions ####

#view for method fragmentation
def Get_pml_fragmentation(confmol,fraglist,strain, maxene=None, minene=None):
    if os.path.exists('pymol'):
        pass
        #print('tmpdir already exits')
    else:
        os.mkdir('pymol')
        logger.critical("pymol has been created.")

    molname = os.path.join('pymol',confmol.name+'.xyz')
    
    molecule2xyz(confmol,molname)

    write_mol_frag_pml(molname,fraglist,strain, maxene, minene)
    
def write_mol_frag_pml(molname,fraglist,strain, maxene=None, minene=None):
    frag_ene = {}
    for i, frag_i in enumerate(fraglist):
        atomic_labes = [int(num)+1 for num in frag_i]
        frag_ene[tuple(atomic_labes)] = float(strain[i])

    write_pymol_frag_pml(molname,frag_ene,extral_mark='_M1',maxene=maxene, minene=minene)
    #write_frag_show_pml(molname,fraglist,'_M1')
    
#view for method bondcut
def Get_pml_bondcut(confmol,internal_list,strain,delta_values,maxene=None, minene=None,mindelta=None, maxdelta=None):
    if os.path.exists('pymol'):
        pass
    else:
        os.mkdir('pymol')
        logger.critical("pymol has been created.\n")

    molname = os.path.join('pymol',confmol.name+'.xyz')
    molecule2xyz(confmol,molname)
    
    write_mol_bondcut_pml(molname,internal_list,strain,delta_values,maxene, minene,mindelta=mindelta,maxdelta=maxdelta)
   

def write_mol_bondcut_pml(molname, internal_list,strain, delta_values,maxene=None, minene=None,mindelta=None, maxdelta=None):
    # delta_values = bf.delta_internal_values(refValues,confValues)
    #draw_bondcut_delta(molname, internal_list, delta_values, mindelta=mindelta,maxdelta=maxdelta,extral_mark='_M2')

    bond_ene = {}
    angle_ene = {}
    torsion_ene = {}
    total_ene = {}
    for i, atoms_labes in enumerate(internal_list):
        if len(atoms_labes) == 2: #bond
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            bond_ene[(min(a1,a2),max(a1,a2))] = float(strain[i])
        elif len(atoms_labes) == 3: #angle
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            a3 = int(atoms_labes[2])+1
            if (min(a1,a2),max(a1,a2)) in angle_ene.keys():
                enetmp = angle_ene[(min(a1,a2),max(a1,a2))]
                angle_ene[(min(a1,a2),max(a1,a2))] = enetmp + float(strain[i])/2
            else:
                angle_ene[(min(a1,a2),max(a1,a2))] = float(strain[i])/2
            if (min(a2,a3),max(a2,a3)) in angle_ene.keys():
                enetmp = angle_ene[(min(a2,a3),max(a2,a3)) ]
                angle_ene[(min(a2,a3),max(a2,a3)) ] = enetmp + float(strain[i])/2
            else:
                angle_ene[(min(a2,a3),max(a2,a3)) ] = float(strain[i])/2
        elif len(atoms_labes) == 4: #torsion
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            a3 = int(atoms_labes[2])+1
            a4 = int(atoms_labes[3])+1
            
            #dihedral/1 center bond
            if (min(a2,a3),max(a2,a3)) in torsion_ene.keys():
                enetmp = torsion_ene[(min(a2,a3),max(a2,a3)) ]
                torsion_ene[(min(a2,a3),max(a2,a3)) ] = enetmp + float(strain[i])
            else:
                torsion_ene[(min(a2,a3),max(a2,a3)) ] = float(strain[i])
            #dihedral/3  
            #if (min(a1,a2),max(a1,a2)) in torsion_ene.keys():
            #    enetmp = torsion_ene[(min(a1,a2),max(a1,a2))]
            #    torsion_ene[(min(a1,a2),max(a1,a2))] = enetmp + float(strain[i])/3
            #else:
            #    torsion_ene[(min(a1,a2),max(a1,a2))] = float(strain[i])/3
            #if (min(a2,a3),max(a2,a3)) in torsion_ene.keys():
            #    enetmp = torsion_ene[(min(a2,a3),max(a2,a3)) ]
            #    torsion_ene[(min(a2,a3),max(a2,a3)) ] = enetmp + float(strain[i])/3
            #else:
            #    torsion_ene[(min(a2,a3),max(a2,a3)) ] = float(strain[i])/3
            #
            #if (min(a3,a4),max(a3,a4)) in torsion_ene.keys():
            #    enetmp = torsion_ene[(min(a3,a4),max(a3,a4)) ]
            #    torsion_ene[(min(a3,a4),max(a3,a4)) ] = enetmp + float(strain[i])/3
            #else:
            #    torsion_ene[(min(a3,a4),max(a3,a4)) ] = float(strain[i])/3
        else: #problem
            logger.error('Error: Please check the atoms number > 4')
            sys.exit()

    total_ene = copy.deepcopy(bond_ene)
    for keytmp in angle_ene.keys():
        if keytmp in total_ene.keys():
            enetmp = total_ene[keytmp]
            total_ene[keytmp] = enetmp + angle_ene[keytmp]
        else:
            total_ene[keytmp] = angle_ene[keytmp]

    for keytmp in torsion_ene.keys():
        if keytmp in total_ene.keys():
            enetmp = total_ene[keytmp]
            total_ene[keytmp] = enetmp + torsion_ene[keytmp]
        else:
            total_ene[keytmp] = torsion_ene[keytmp]
    
    if maxene == None:
        maxb = max(list(bond_ene.values())+[-999])
        maxa = max(list(angle_ene.values())+[-999])
        maxt = max(total_ene.values())

        max_energy = max(maxb,maxa,maxt)
    else:
        max_energy = maxene 
    
    if minene == None:
        minb = min(list(bond_ene.values())+[999])
        mina = min(list(angle_ene.values())+[999])
        mint = min(total_ene.values())
        
        min_energy = min(minb,mina,mint)
    else:
        min_energy = minene 
  
    write_pymol_bondcut_pml(molname,bond_ene,max_energy,min_energy,'_M2_bond')
    write_pymol_bondcut_pml(molname,angle_ene,max_energy,min_energy,'_M2_angle')
    if torsion_ene:
        write_pymol_bondcut_pml(molname,torsion_ene,max_energy,min_energy,'_M2_dihedral')
    write_pymol_bondcut_pml(molname,total_ene,max_energy,min_energy,'_M2_total')

#view for method bondcut + fragmentations
def Get_pml_bondcut_fragmentation(confmol,internal_list,strain,delta_values,fraglist,strain_frag, maxene=None, minene=None,mindelta=None,maxdelta=None):
    if os.path.exists('pymol'):
        pass
    else:
        os.mkdir('pymol')
        logger.critical("pymol has been created.\n")

    molname = os.path.join('pymol',confmol.name+'.xyz')
    molecule2xyz(confmol,molname)
    
    write_mol_bondcutfrag_pml(molname,internal_list,strain,delta_values,fraglist,strain_frag,maxene, minene, maxdelta=maxdelta,mindelta=mindelta)
    #delta_values = bf.delta_internal_values(refValues,confValues)
    

def write_mol_bondcutfrag_pml(molname,internal_list,strain,delta_values,fraglist,strain_frag,maxene=None, minene=None,mindelta=None,maxdelta=None):
    #draw_bondcut_delta(molname, internal_list, delta_values,maxdelta=maxdelta,mindelta=mindelta,extral_mark='_M3')

    bond_ene = {}
    angle_ene = {}
    torsion_ene = {}
    total_ene = {}
    for i, atoms_labes in enumerate(internal_list):
        if len(atoms_labes) == 2: #bond
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            bond_ene[(min(a1,a2),max(a1,a2))] = float(strain[i])
        elif len(atoms_labes) == 3: #angle
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            a3 = int(atoms_labes[2])+1
            if (min(a1,a2),max(a1,a2)) in angle_ene.keys():
                enetmp = angle_ene[(min(a1,a2),max(a1,a2))]
                angle_ene[(min(a1,a2),max(a1,a2))] = enetmp + float(strain[i])/2
            else:
                angle_ene[(min(a1,a2),max(a1,a2))] = float(strain[i])/2
            if (min(a2,a3),max(a2,a3)) in angle_ene.keys():
                enetmp = angle_ene[(min(a2,a3),max(a2,a3)) ]
                angle_ene[(min(a2,a3),max(a2,a3)) ] = enetmp + float(strain[i])/2
            else:
                angle_ene[(min(a2,a3),max(a2,a3)) ] = float(strain[i])/2
        elif len(atoms_labes) == 4: #torsion
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            a3 = int(atoms_labes[2])+1
            a4 = int(atoms_labes[3])+1
            
            #dihedral/1 center bond
            if (min(a2,a3),max(a2,a3)) in torsion_ene.keys():
                enetmp = torsion_ene[(min(a2,a3),max(a2,a3)) ]
                torsion_ene[(min(a2,a3),max(a2,a3)) ] = enetmp + float(strain[i])
            else:
                torsion_ene[(min(a2,a3),max(a2,a3)) ] = float(strain[i])
            
            # dihedral/3
            #if (min(a1,a2),max(a1,a2)) in torsion_ene.keys():
            #    enetmp = torsion_ene[(min(a1,a2),max(a1,a2))]
            #    torsion_ene[(min(a1,a2),max(a1,a2))] = enetmp + float(strain[i])/3
            #else:
            #    torsion_ene[(min(a1,a2),max(a1,a2))] = float(strain[i])/3
            #if (min(a2,a3),max(a2,a3)) in torsion_ene.keys():
            #    enetmp = torsion_ene[(min(a2,a3),max(a2,a3)) ]
            #    torsion_ene[(min(a2,a3),max(a2,a3)) ] = enetmp + float(strain[i])/3
            #else:
            #    torsion_ene[(min(a2,a3),max(a2,a3)) ] = float(strain[i])/3
            #
            #if (min(a3,a4),max(a3,a4)) in torsion_ene.keys():
            #    enetmp = torsion_ene[(min(a3,a4),max(a3,a4)) ]
            #    torsion_ene[(min(a3,a4),max(a3,a4)) ] = enetmp + float(strain[i])/3
            #else:
            #    torsion_ene[(min(a3,a4),max(a3,a4)) ] = float(strain[i])/3
        else: #problem
            logger.error('Error: Please check the atoms number > 4')
            sys.exit()

    total_ene = copy.deepcopy(bond_ene)
    for keytmp in angle_ene.keys():
        if keytmp in total_ene.keys():
            enetmp = total_ene[keytmp]
            total_ene[keytmp] = enetmp + angle_ene[keytmp]
        else:
            total_ene[keytmp] = angle_ene[keytmp]
    for keytmp in torsion_ene.keys():
        if keytmp in total_ene.keys():
            enetmp = total_ene[keytmp]
            total_ene[keytmp] = enetmp + torsion_ene[keytmp]
        else:
            total_ene[keytmp] = torsion_ene[keytmp]
            
    #frag
    frag_ene = {}
    for i, frag_i in enumerate(fraglist):
        atomic_labes = [int(num)+1 for num in frag_i]
        frag_ene[tuple(atomic_labes)] = float(strain_frag[i])
    
    if maxene == None:
        maxb = max(list(bond_ene.values())+[-999])
        maxa = max(list(angle_ene.values())+[-999])
        maxr = max(list(frag_ene.values())+[-999])
        maxt = max(total_ene.values())

        max_energy = max(maxb,maxa,maxr,maxt)
    else:
        max_energy = maxene 
    
    if minene == None:
        minb = min(list(bond_ene.values())+[999])
        mina = min(list(angle_ene.values())+[999])
        minr = min(list(frag_ene.values())+[999])
        mint = min(total_ene.values())
        
        min_energy = min(minb,mina,minr,mint)
    else:
        min_energy = minene 

    write_pymol_bondcut_pml(molname,bond_ene,max_energy,min_energy,'_M3_bond')
    write_pymol_bondcut_pml(molname,angle_ene,max_energy,min_energy,'_M3_angle')
    if torsion_ene:
        write_pymol_bondcut_pml(molname,torsion_ene,max_energy,min_energy,'_M3_dihedral')
    write_pymol_bondcut_frag_pml(molname,frag_ene,max_energy,min_energy,extral_mark='_M3_frag')
    write_pymol_bondcutfrag_pml(molname,total_ene,frag_ene,max_energy,min_energy,'_M3_total')


def draw_bondcut_delta(molf, internal_list, delta_values, mindelta=None, maxdelta=None,extral_mark=''):
    bond_delta = {}
    angle_deltap = {}
    angle_deltan = {}
    
    for i, atoms_labes in enumerate(internal_list):
        if len(atoms_labes) == 2: #bond
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            bond_delta[(min(a1,a2),max(a1,a2))] = float(delta_values[i])
        elif len(atoms_labes) == 3: #angle
            a1 = int(atoms_labes[0])+1
            a2 = int(atoms_labes[1])+1
            a3 = int(atoms_labes[2])+1
            if float(delta_values[i]) < 0.0: #negative
                if (min(a1,a2),max(a1,a2)) in angle_deltan.keys():
                    enetmp = angle_deltan[(min(a1,a2),max(a1,a2))]
                    angle_deltan[(min(a1,a2),max(a1,a2))] = enetmp + float(delta_values[i])/2
                else:
                    angle_deltan[(min(a1,a2),max(a1,a2))] = float(delta_values[i])/2
                if (min(a2,a3),max(a2,a3)) in angle_deltan.keys():
                    enetmp = angle_deltan[(min(a2,a3),max(a2,a3)) ]
                    angle_deltan[(min(a2,a3),max(a2,a3)) ] = enetmp + float(delta_values[i])/2
                else:
                    angle_deltan[(min(a2,a3),max(a2,a3)) ] = float(delta_values[i])/2
            else:
                if (min(a1,a2),max(a1,a2)) in angle_deltap.keys():
                    enetmp = angle_deltap[(min(a1,a2),max(a1,a2))]
                    angle_deltap[(min(a1,a2),max(a1,a2))] = enetmp + float(delta_values[i])/2
                else:
                    angle_deltap[(min(a1,a2),max(a1,a2))] = float(delta_values[i])/2
                if (min(a2,a3),max(a2,a3)) in angle_deltap.keys():
                    enetmp = angle_deltap[(min(a2,a3),max(a2,a3)) ]
                    angle_deltap[(min(a2,a3),max(a2,a3)) ] = enetmp + float(delta_values[i])/2
                else:
                    angle_deltap[(min(a2,a3),max(a2,a3)) ] = float(delta_values[i])/2
        elif len(atoms_labes) == 4: #torsion
            logger.critical('Delta torsion was not showed \n')
        else: #problem
            logger.critical('Error: Please check the atoms number > 4')
            sys.exit()

    write_bond_show_pml(molf,bond_delta,mindelta=mindelta, maxdelta=maxdelta,extral_mark=extral_mark+'_bond')
    write_bondangle_show_pml(molf,angle_deltap,extral_mark+'_anglep')
    write_bondangle_show_pml(molf,angle_deltan,extral_mark+'_anglen')

# show bond angle change in pymol
def write_bondangle_show_pml(mol_file,angle_chg,extral_mark=''):
    fname = os.path.splitext(mol_file)[0]
    molname = mol_file.split('/')[-1]

    if os.path.exists('pymol'):
        pass
        #print('tmpdir already exits')
    else:
        os.mkdir('pymol')
        logger.critical("pymol has been created.")

    pml_name = os.path.join('pymol',fname+extral_mark+'_delta_Geo.pml') 

    num_angle = len(angle_chg)
    if num_angle == 0:
        fw = open(pml_name,'w')
        #load mol
        fw.write('reinitialize \n')
        fw.write('bg_color white \n')
        fw.write('set fog, 1 \n')
        fw.write('# Load a molecule\n')
        fw.write('load '+molname+', mol \n')
        
        
        #display parameter
        fw.write('show_as licorice, mol\n')
        fw.write('color grey, mol\n')
        #fw.write('label all, ID\n') 
        fw.write('\n')
        # Adding a representation with the appropriate colorID for each bond
        fw.write('# Adding a representation with the appropriate colorID for each bond\n')
        fw.write('\n')
    else:
        min_chg = min(angle_chg.values())
        max_chg = max(angle_chg.values())

        fw = open(pml_name,'w')
        fw.write('%-18s%12.8f\n' %('# Max change:', max_chg))
        fw.write('%-18s%12.8f\n' %('# Min change:', min_chg))
        fw.write('\n')
        #load mol
        fw.write('reinitialize \n')
        fw.write('bg_color white \n')
        fw.write('set fog, 1 \n')
        fw.write('# Load a molecule\n')
        fw.write('load '+molname+', mol \n')
        
        
        #display parameter
        fw.write('show_as licorice, mol\n')
        fw.write('color grey, mol\n')
        #fw.write('label all, ID\n') 
        fw.write('\n')
        # Adding a representation with the appropriate colorID for each bond
        fw.write('# Adding a representation with the appropriate colorID for each bond\n')
        fw.write('\n')

        for i, keystmp in enumerate(angle_chg.keys()):
            chg_tmp = angle_chg[keystmp]
            if chg_tmp < 0.0:
                rvalue = int(255 * (chg_tmp - min_chg)/(0 - min_chg))
                colorrgb = [rvalue, 255, 0]
            elif chg_tmp > 0.0:
                gvalue = int(255*(1-(chg_tmp - 0)/(max_chg - 0)))
                colorrgb = [255, gvalue, 0]
            elif  chg_tmp == 0.0:
                colorrgb = [255, 255, 0]

            fw.write('set_color color'+str(i+1)+','+str(colorrgb)+'\n')
            fw.write('bond (id '+str(keystmp[0])+'), (id '+str(keystmp[1])+')\n')
            fw.write('set_bond stick_color, '+ 'color'+str(i+1) +', (id '+str(keystmp[0])+'), (id '+str(keystmp[1])+')\n')
            fw.write('\n')
    
    fw.write('\n')
    fw.close()

def gjf2xyz(gjfn,dir):
    name,tfile=os.path.splitext(gjfn)
    fr = open(gjfn,"r")
    lines = fr.readlines()
    fr.close()
    ml, sl, ifconn, ifgen = inputs.gjfkeylines(lines)
    #method lines
    mlines = lines[ml:sl[0]]
    #atoms lines
    atomlines = lines[sl[1]+2:sl[2]]
    xyzname = os.path.join(dir,name+'.xyz')
    fw = open(xyzname,'w')
    fw.write(str(len(atomlines))+'\n')
    fw.write('\n')
    fw.writelines(atomlines)
    fw.write('\n')
    fw.close()
    return xyzname
    
# write fragmentions visualization
def write_pymol_bondcut_frag_pml(mol_file, frag_ene, max_energy, min_energy, extral_mark=''):
    fname = os.path.splitext(mol_file)[0]
    molname = mol_file.split('/')[-1]
    pml_name = fname+extral_mark+'_E.pml'
    
    median_energy = (min_energy+max_energy)/2
    
    fw = open(pml_name,'w')
    fw.write('%-18s%12.8f\n' %('# Max Energy:', max_energy))
    fw.write('%-18s%12.8f\n' %('# Min Energy:', min_energy))
    fw.write('%-18s%12.8f\n' %('# median Energy:', median_energy))
    fw.write('\n')
    #load mol
    fw.write('reinitialize \n')
    fw.write('bg_color white \n')
    fw.write('set fog, 1 \n')
    fw.write('# Load a molecule\n')
    fw.write('load '+molname+', mol \n')
    
    
    #display parameter
    fw.write('show_as licorice, mol\n')
    fw.write('color grey, mol\n') #show the not computed ones
    #fw.write('label all, ID\n') 
    fw.write('\n')
    # Adding a representation with the appropriate colorID for each bond
    fw.write('# Adding a representation with the appropriate colorID for each bond\n')
    fw.write('\n')

    #if using log scale
    if iflog:
        min_use = 0.0
        new_ene = {}
        for keystmp in frag_ene.keys():
            energy_tmp = frag_ene[keystmp]
            new_ene[keystmp] = math.log(energy_tmp - min_energy + 1, lognum)
        max_use = math.log(max_energy - min_energy + 1, lognum)
    else:
        new_ene = copy.deepcopy(frag_ene)
        max_use = max_energy
        min_use = min_energy
        
    median_ene = (min_use+max_use)/2
    
    for i, keystmp in enumerate(frag_ene.keys()):
        energy_tmp = new_ene[keystmp]
        if energy_tmp < median_ene:
            rvalue = int(255 * (energy_tmp - min_use)/(median_ene - min_use))
            colorrgb = [rvalue, 255, 0]
        elif energy_tmp > median_ene:
            gvalue = int(255*(1-(energy_tmp - median_ene)/(max_use - median_ene)))
            colorrgb = [255, gvalue, 0]
        elif  energy_tmp == median_ene:
            colorrgb = [255, 255, 0]

        keystmp_list = list(keystmp)
        atom_labes = '+'.join(str(num) for num in keystmp_list)
        
        fw.write('set_color color'+str(i+1)+','+str(colorrgb)+'\n')
        fw.write('color '+ 'color'+str(i+1) +', id '+atom_labes+'\n')
        fw.write('\n')

    fw.write('\n')
    fw.close()

# write fragmentions visualization
def write_pymol_frag_pml(mol_file, frag_ene, extral_mark='', maxene=None, minene=None):
    fname = os.path.splitext(mol_file)[0]
    molname = mol_file.split('/')[-1]
    pml_name = fname+extral_mark+'_total_E.pml'

    if maxene == None:
        max_energy = max(frag_ene.values())
    else:
        max_energy = maxene

    if minene == None:
        min_energy = min(frag_ene.values())
    else:
        min_energy = minene

    median_energy = (min_energy+max_energy)/2
    
    fw = open(pml_name,'w')
    fw.write('%-18s%12.8f\n' %('# Max Energy:', max_energy))
    fw.write('%-18s%12.8f\n' %('# Min Energy:', min_energy))
    fw.write('%-18s%12.8f\n' %('# median Energy:', median_energy))
    fw.write('\n')
    #load mol
    fw.write('reinitialize \n')
    fw.write('bg_color white \n')
    fw.write('set fog, 1 \n')
    fw.write('# Load a molecule\n')
    fw.write('load '+molname+', mol \n')
    
    
    #display parameter
    fw.write('show_as licorice, mol\n')
    fw.write('color grey, mol\n') #show the not computed ones
    #fw.write('label all, ID\n') 
    fw.write('\n')
    # Adding a representation with the appropriate colorID for each bond
    fw.write('# Adding a representation with the appropriate colorID for each bond\n')
    fw.write('\n')

    #if using log scale
    if iflog:
        min_use = 0.0
        new_ene = {}
        for keystmp in frag_ene.keys():
            energy_tmp = frag_ene[keystmp]
            new_ene[keystmp] = math.log(energy_tmp - min_energy + 1, lognum)
        max_use = math.log(max_energy - min_energy + 1, lognum)
    else:
        new_ene = copy.deepcopy(frag_ene)
        max_use = max_energy
        min_use = min_energy
        
    median_ene = (min_use+max_use)/2
    
    for i, keystmp in enumerate(frag_ene.keys()):
        energy_tmp = new_ene[keystmp]
        if energy_tmp < median_ene:
            rvalue = int(255 * (energy_tmp - min_use)/(median_ene - min_use))
            colorrgb = [rvalue, 255, 0]
        elif energy_tmp > median_ene:
            gvalue = int(255*(1-(energy_tmp - median_ene)/(max_use - median_ene)))
            colorrgb = [255, gvalue, 0]
        elif  energy_tmp == median_ene:
            colorrgb = [255, 255, 0]

        keystmp_list = list(keystmp)
        atom_labes = '+'.join(str(num) for num in keystmp_list)
        
        fw.write('set_color color'+str(i+1)+','+str(colorrgb)+'\n')
        fw.write('color '+ 'color'+str(i+1) +', id '+atom_labes+'\n')
        fw.write('\n')

    fw.write('\n')
    fw.close()

# show fraglist in pymol
def write_frag_show_pml(mol_file,frag_list,extral_mark=''):
    

    fname = os.path.splitext(mol_file)[0]
    molname = mol_file.split('/')[-1]

    if os.path.exists('pymol'):
        pass
        #print('tmpdir already exits')
    else:
        os.mkdir('pymol')
        logger.critical("pymol has been created.")
    pml_name = os.path.join('pymol', fname+extral_mark+'_frag_show.pml')
    

    fw = open(pml_name,'w')
    #load mol
    fw.write('reinitialize \n')
    fw.write('bg_color white \n')
    fw.write('set fog, 1 \n')
    fw.write('# Load a molecule\n')
    fw.write('load '+molname+', mol \n')

    #display parameter
    fw.write('show_as licorice, mol\n')
    fw.write('color grey, mol\n')
    #fw.write('label all, ID\n') 
    fw.write('\n')
    # Adding a representation with the appropriate colorID for each bond
    fw.write('# Adding a representation with the appropriate colorID for each frag\n')
    fw.write('\n')

    numfrag = len(frag_list)

    colorrgb0 = [[1.00, 0.00, 0.00],[0.00, 1.00, 0.00],[0.00, 0.00, 1.00],
                 [1.00, 1.00, 0.00],[1.00, 0.00, 1.00],[0.00, 1.00, 1.00],
                 [0.99, 0.82, 0.65],[0.65, 0.32, 0.17],[0.20, 0.60, 0.20],
                 [0.10, 0.10, 0.60],[0.72, 0.55, 0.30],[0.60, 0.10, 0.60],
                 [0.40, 0.70, 0.70],[0.85, 0.85, 1.00],[1.00, 0.60, 0.60],
                 [0.55, 0.70, 0.40],[0.75, 0.75, 1.00],[0.75, 1.00, 0.25],
                 [1.00, 0.75, 0.87],[0.00, 0.75, 0.75],[1.00, 0.75, 0.87]]

    for i, keystmp in enumerate(frag_list):
        colorrgb = colorrgb0[i%len(colorrgb0)]
        keystmp_list = list(keystmp)
        atom_labes = '+'.join(str(num) for num in keystmp_list)
        fw.write('set_color color'+str(i+1)+','+str(colorrgb)+'\n')
        fw.write('color '+ 'color'+str(i+1) +', id '+atom_labes+'\n')
        fw.write('\n')

    fw.write('\n')
    fw.close()

# show bond angle change in pymol
def write_bond_show_pml(mol_file,bond_chg, mindelta=None, maxdelta=None, extral_mark=''):
    fname = os.path.splitext(mol_file)[0]
    molname = mol_file.split('/')[-1]

    if os.path.exists('pymol'):
        pass
        #print('tmpdir already exits')
    else:
        os.mkdir('pymol')
        logger.critical("pymol has been created.")

    pml_name = os.path.join('pymol', fname+extral_mark+'_delta_Geo.pml')

    if mindelta==None:
        min_chg = min(bond_chg.values())
    else:
        min_chg = mindelta
        
    if maxdelta==None:
        max_chg = max(bond_chg.values())
    else:
        max_chg = maxdelta

    fw = open(pml_name,'w')
    fw.write('%-18s%12.8f\n' %('# Max change:', max_chg))
    fw.write('%-18s%12.8f\n' %('# Min change:', min_chg))
    fw.write('\n')
    #load mol
    fw.write('reinitialize \n')
    fw.write('bg_color white \n')
    fw.write('set fog, 1 \n')
    fw.write('# Load a molecule\n')
    fw.write('load '+molname+', mol \n')
    
    
    #display parameter
    fw.write('show_as licorice, mol\n')
    fw.write('color grey, mol\n')
    #fw.write('label all, ID\n') 
    fw.write('\n')
    # Adding a representation with the appropriate colorID for each bond
    fw.write('# Adding a representation with the appropriate colorID for each bond\n')
    fw.write('\n')

    for i, keystmp in enumerate(bond_chg.keys()):
        chg_tmp = bond_chg[keystmp]
        if chg_tmp < 0.0:
            rvalue = int(255 * (chg_tmp - min_chg)/(0 - min_chg))
            colorrgb = [rvalue, 255, 0]
        elif chg_tmp > 0.0:
            gvalue = int(255*(1-(chg_tmp - 0)/(max_chg - 0)))
            colorrgb = [255, gvalue, 0]
        elif  chg_tmp == 0.0:
            colorrgb = [255, 255, 0]

        fw.write('set_color color'+str(i+1)+','+str(colorrgb)+'\n')
        fw.write('bond (id '+str(keystmp[0])+'), (id '+str(keystmp[1])+')\n')
        fw.write('set_bond stick_color, '+ 'color'+str(i+1) +', (id '+str(keystmp[0])+'), (id '+str(keystmp[1])+')\n')
        fw.write('\n')
    
    fw.write('\n')
    fw.close()

# write bondcut visualization
def write_pymol_bondcut_pml(mol_file, bond_energies, max_energy, min_energy, extral_mark=''):
    fname = os.path.splitext(mol_file)[0]
    molname = mol_file.split('/')[-1]
    pml_name = fname+extral_mark+'_E.pml'

    #min_energy = min(bond_energies.values())
    #max_energy = max(bond_energies.values())
    median_energy = (min_energy+max_energy)/2
    
    fw = open(pml_name,'w')
    fw.write('%-18s%12.8f\n' %('# Max Energy:', max_energy))
    fw.write('%-18s%12.8f\n' %('# Min Energy:', min_energy))
    fw.write('%-18s%12.8f\n' %('# median Energy:', median_energy))
    fw.write('\n')
    #load mol
    fw.write('reinitialize \n')
    fw.write('bg_color white \n')
    fw.write('set fog, 1 \n')
    fw.write('# Load a molecule\n')
    fw.write('load '+molname+', mol \n')
    
    
    #display parameter
    fw.write('show_as licorice, mol\n')
    fw.write('color grey, mol\n')
    #fw.write('label all, ID\n') 
    fw.write('\n')
    # Adding a representation with the appropriate colorID for each bond
    fw.write('# Adding a representation with the appropriate colorID for each bond\n')
    fw.write('\n')

    #if using log scale
    if iflog:
        min_use = 0.0
        new_ene = {}
        for keystmp in bond_energies.keys():
            energy_tmp = bond_energies[keystmp]
            new_ene[keystmp] = math.log(energy_tmp - min_energy + 1, lognum)
        max_use = math.log(max_energy - min_energy + 1, lognum)
    else:
        new_ene = copy.deepcopy(bond_energies)
        max_use = max_energy
        min_use = min_energy
        
    median_ene = (min_use+max_use)/2
    
    for i, keystmp in enumerate(bond_energies.keys()):
        energy_tmp = new_ene[keystmp]
        if energy_tmp < median_ene:
            rvalue = int(255 * (energy_tmp - min_use)/(median_ene - min_use))
            colorrgb = [rvalue, 255, 0]
        elif energy_tmp > median_ene:
            gvalue = int(255*(1-(energy_tmp - median_ene)/(max_use - median_ene)))
            colorrgb = [255, gvalue, 0]
        elif  energy_tmp == median_ene:
            colorrgb = [255, 255, 0]

        fw.write('set_color color'+str(i+1)+','+str(colorrgb)+'\n')
        fw.write('bond (id '+str(keystmp[0])+'), (id '+str(keystmp[1])+')\n')
        fw.write('set_bond stick_color, '+ 'color'+str(i+1) +', (id '+str(keystmp[0])+'), (id '+str(keystmp[1])+')\n')
        
    fw.write('\n')
    fw.close()

# write fragmentions + bondcut visualization
def write_pymol_bondcutfrag_pml(mol_file, bond_energies, frag_ene, max_energy, min_energy, extral_mark=''):
    fname = os.path.splitext(mol_file)[0]
    molname = mol_file.split('/')[-1]
    pml_name = fname+extral_mark+'_E.pml'

    #min_energy = min(bond_energies.values())
    #max_energy = max(bond_energies.values())
    median_energy = (min_energy+max_energy)/2
    
    fw = open(pml_name,'w')
    fw.write('%-18s%12.8f\n' %('# Max Energy:', max_energy))
    fw.write('%-18s%12.8f\n' %('# Min Energy:', min_energy))
    fw.write('%-18s%12.8f\n' %('# median Energy:', median_energy))
    fw.write('\n')
    #load mol
    fw.write('reinitialize \n')
    fw.write('bg_color white \n')
    fw.write('set fog, 1 \n')
    fw.write('# Load a molecule\n')
    fw.write('load '+molname+', mol \n')
    
    
    #display parameter
    fw.write('show_as licorice, mol\n')
    fw.write('color grey, mol\n')
    #fw.write('label all, ID\n') 
    fw.write('\n')
    # Adding a representation with the appropriate colorID for each bond
    fw.write('# Adding a representation with the appropriate colorID for each bond\n')
    fw.write('\n')

    #if using log scale
    if iflog:
        min_use = 0.0
        new_bondene = {}
        new_fragene = {}
        for keystmp in bond_energies.keys():
            energy_tmp = bond_energies[keystmp]
            new_bondene[keystmp] = math.log(energy_tmp - min_energy + 1, lognum)
            
        for keystmp in frag_ene.keys():
            energy_tmp = frag_ene[keystmp]
            new_fragene[keystmp] = math.log(energy_tmp - min_energy + 1, lognum)
        max_use = math.log(max_energy - min_energy + 1, lognum)
    else:
        new_bondene = copy.deepcopy(bond_energies)
        new_fragene = copy.deepcopy(frag_ene)
        max_use = max_energy
        min_use = min_energy
        
    median_ene = (min_use+max_use)/2

    for i, keystmp in enumerate(bond_energies.keys()):
        energy_tmp = new_bondene[keystmp]
        if energy_tmp < median_ene:
            rvalue = int(255 * (energy_tmp - min_use)/(median_ene - min_use))
            colorrgb = [rvalue, 255, 0]
        elif energy_tmp > median_ene:
            gvalue = int(255*(1-(energy_tmp - median_ene)/(max_use - median_ene)))
            colorrgb = [255, gvalue, 0]
        elif  energy_tmp == median_ene:
            colorrgb = [255, 255, 0]

        fw.write('set_color color'+str(i+1)+','+str(colorrgb)+'\n')
        fw.write('bond (id '+str(keystmp[0])+'), (id '+str(keystmp[1])+')\n')
        fw.write('set_bond stick_color, '+ 'color'+str(i+1) +', (id '+str(keystmp[0])+'), (id '+str(keystmp[1])+')\n')
        fw.write('\n')
        
        
        
    for i, keystmp in enumerate(frag_ene.keys()):
        energy_tmp = new_fragene[keystmp]
        if energy_tmp < median_ene:
            rvalue = int(255 * (energy_tmp - min_use)/(median_ene - min_use))
            colorrgb = [rvalue, 255, 0]
        elif energy_tmp > median_ene:
            gvalue = int(255*(1-(energy_tmp - median_ene)/(max_use - median_ene)))
            colorrgb = [255, gvalue, 0]
        elif  energy_tmp == median_ene:
            colorrgb = [255, 255, 0]

        keystmp_list = list(keystmp)
        atom_labes = '+'.join(str(num) for num in keystmp_list)
        
        fw.write('set_color colorring'+str(i+1)+','+str(colorrgb)+'\n')
        fw.write('color '+ 'colorring'+str(i+1) +', id '+atom_labes+'\n')
        fw.write('\n')

    fw.write('\n')
    fw.close()

#save ref and conf mols in xyz file
def refmols2xyz(mols,name='',list=None):
    fw = open('Ref_'+name+'.xyz','w')
        
    for i, mol in enumerate(mols):
        numa = mol.get_num_atoms()
        xyzlines = bf.mol2xyzline(mol)
        
        fw.write('%d\n'%numa)
        fw.write('%s\n'%(mol.name))
        fw.write(xyzlines)
    fw.close()

#save multiple conf mols in xyz file
def confsmols2xyz(confsmols,name='',list=None):
        
    fw = open('Conf_'+name+'.xyz','w')
    for i, mols in enumerate(confsmols):
        for j, mol in enumerate(mols):
            numa = mol.get_num_atoms()
            xyzlines = bf.mol2xyzline(mol)
            
            fw.write('%d\n'%numa)
            fw.write('%s\n'%(mol.name))
            fw.write(xyzlines)
    fw.close()    


# bond delta pymol
def bond_delta(ref_coord, conf_coords, linkm):
    num_conf = conf_coords.shape[0]
    internal_list = bf.linkm2intercoord(linkm)
    ref_internal_values = bf.get_intercoord_values(internal_list,ref_coord)

    if num_conf == 1:
        molname = 'Conf'
        conf_internal_values = bf.get_intercoord_values(internal_list,conf_coords[0])
        delta_values = bf.delta_internal_values(ref_internal_values, conf_internal_values)
        draw_bondcut_delta(molname, internal_list, delta_values)
    else:
        for i in range(num_conf):
            molname = 'Conf_'+str(i)
            conf_internal_values = bf.get_intercoord_values(internal_list,conf_coords[i])
            delta_values = bf.delta_internal_values(ref_internal_values, conf_internal_values)
            draw_bondcut_delta(molname, internal_list, delta_values)