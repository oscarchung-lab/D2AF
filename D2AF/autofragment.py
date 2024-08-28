import openbabel as ob
import networkx as nx
import numpy as np
from itertools import combinations
import os
import sys


def xyz2fragments(xyzf):
    name = os.path.splitext(xyzf)[0]
    
    # Load the molecule
    mol = ob.OBMol()
    obConversion = ob.OBConversion()
    obConversion.SetInFormat("xyz")
    obConversion.ReadFile(mol, xyzf)

    fraglist, linkm = mol2fraglist(mol)
    
    fr = open(xyzf,'r')
    xyzlines = fr.readlines()
    fr.close()
    
    fw = open(name+'.gjf', 'w')
    fw.write('# hf/STO-3G geom=connectivity \n')
    fw.write('\n')
    fw.write('%s with connectivity\n'%name)
    fw.write('\n')
    fw.write('%d %d\n'%(mol.GetTotalCharge(), mol.GetTotalSpinMultiplicity()))
    
    fw.writelines(xyzlines[2:2+mol.NumAtoms()])
    
    fw.write('\n')
    
    connlines = linkm2conn(linkm)
    fw.writelines(connlines)
    fw.write('\n')
    fw.write('\n')       
            
    fw.close()

    write_frag_show_pml(xyzf,fraglist,extral_mark='_auto')
   

#with or withno connectivity gjf
def gjf2fragments(gjff):
    name = os.path.splitext(gjff)[0]
    fr = open(gjff,"r")
    lines = fr.readlines()
    fr.close()
    ml, sl, ifconn, ifgen = gjfkeylines(lines)
    
    #method lines
    mlines = lines[ml:sl[0]]
    #atoms lines
    atomlines = lines[sl[1]+2:sl[2]]
    
    xyzlines = ['%d \n'%len(atomlines), ' \n']
    xyzlines.extend(atomlines)
    # Load the molecule
    mol = ob.OBMol()
    obConversion = ob.OBConversion()
    obConversion.SetInFormat("xyz")
    obConversion.ReadString(mol, ''.join(xyzlines))
    
    fw = open(name+'.xyz', 'w')
    fw.writelines(''.join(xyzlines))
    fw.close()
    
    if ifconn:
        #generate connectivity matrix from connectivity block
        if len(sl) == 3:
            connlines = lines[sl[2]+1:]
        else:
            connlines = lines[sl[2]+1:sl[3]]
        matrix_link = linkmatrix(connlines)
        
        fraglist, linkm0 = mol2fraglist(mol,linkm = matrix_link)
    else:
        fraglist, linkm0 = mol2fraglist(mol) 
        #write new linkm gjf
        fw = open(name+'_link.gjf',"w")
        fw.writelines(lines[:ml])
        mlines[0] = mlines[0].replace('\n',' geom=connectivity\n')
        fw.writelines(mlines)
        #fw.writelines(lines[:sl[2]])
        fw.writelines(lines[sl[0]:sl[2]])
        fw.write('\n')
        connlines = linkm2conn(linkm0)
        fw.writelines(connlines)
        fw.write('\n')
        fw.close()
    
    write_frag_show_pml(name+'.xyz',fraglist,extral_mark='_auto')
  
def linkm2conn(linkm):
    #write connectivity
    numa = linkm.shape[0]
    lines = []
    for i in range(numa):
        linetmp = ''
        linetmp = ' %d'%(i+1)
        bondlist = np.nonzero(linkm[i][:])

        for linkatomtmp in bondlist[0]:
            if linkatomtmp > i:
                linetmp = linetmp + ' %d %3.1f'%(linkatomtmp+1,linkm[i][linkatomtmp])

        linetmp = linetmp + '\n'
        lines.append(linetmp)
    return lines    
        

def mol2fraglist(mol, **kwargs):
    #element list
    numa = mol.NumAtoms()
    elementslist = [atom.GetAtomicNum() for atom in ob.OBMolAtomIter(mol)]
  
    if 'linkm' not in kwargs.keys():
        linkm = np.zeros((numa,numa), dtype=float)

        for bond in ob.OBMolBondIter(mol):
            atom1 = bond.GetBeginAtomIdx() - 1 
            atom2 = bond.GetEndAtomIdx() - 1
            order = bond.GetBondOrder() 
                        
            linkm[atom1][atom2] = order
            linkm[atom2][atom1] = order
    else:
        linkm = kwargs['linkm']
        #write a connectivity gjf

    #graph for framents
    molG0 = nx.Graph()
    molGf = nx.Graph()

    # add node and edge
    molG0.add_nodes_from(range(1,numa+1))
    molGf.add_nodes_from(range(1,numa+1))
    
    # geom to graph 
    for i in range(numa):
        for j in range(i+1, numa):
            order = linkm[i][j]
            atom1_num = elementslist[i]
            atom2_num = elementslist[j]
    
            if order > 0.0:
                molG0.add_edges_from([(i+1, j+1)])
            
            # delete the single bond conection
            if ((atom1_num == 1 or atom1_num > 18) or (atom2_num == 1 or atom2_num > 18)) and order > 0.0:
                molGf.add_edges_from([(i+1, j+1)])
            elif order > 1.0:
                molGf.add_edges_from([(i+1, j+1)])
    # cycles in mol
    cycles = nx.cycle_basis(molG0)
    if len(cycles) > 0:
        print('Cycle founds:')
        print(cycles)
        for cycle in cycles:
            atompair = list(combinations(cycle,2))
            for atoms in atompair:
                if linkm[atoms[0]][atoms[1]] > 0.0:
                    molGf.add_edges_from([atoms])
    else:
        print('No cycles found')
    
    subgraph = nx.connected_components(molGf)
    
    fraglist = []
    print('')  
    print('#fraglist')
    for i, component in enumerate(subgraph):
        print(','.join(str(id) for id in list(component)))
        fraglist.append(list(component))            
    print('')           
    return fraglist, linkm
 
# show fraglist in pymol
def write_frag_show_pml(mol_file,fraglist,extral_mark=''):
    fname = os.path.splitext(mol_file)[0]
    molname = mol_file.split('/')[-1]
    pml_name = fname+extral_mark+'_frag_show.pml'

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

    numfrag = len(fraglist)

    colorrgb0 = [[1.00, 0.00, 0.00],[0.00, 1.00, 0.00],[0.00, 0.00, 1.00],
                 [1.00, 1.00, 0.00],[1.00, 0.00, 1.00],[0.00, 1.00, 1.00],
                 [0.99, 0.82, 0.65],[0.65, 0.32, 0.17],[0.20, 0.60, 0.20],
                 [0.10, 0.10, 0.60],[0.72, 0.55, 0.30],[0.60, 0.10, 0.60],
                 [0.40, 0.70, 0.70],[0.85, 0.85, 1.00],[1.00, 0.60, 0.60],
                 [0.55, 0.70, 0.40],[0.75, 0.75, 1.00],[0.75, 1.00, 0.25],
                 [1.00, 0.75, 0.87],[0.00, 0.75, 0.75],[1.00, 0.75, 0.87]]

    for i, keystmp in enumerate(fraglist):
        colorrgb = colorrgb0[i%len(colorrgb0)]
        keystmp_list = list(keystmp)
        atom_labes = '+'.join(str(num) for num in keystmp_list)
        fw.write('set_color color'+str(i+1)+','+str(colorrgb)+'\n')
        fw.write('color '+ 'color'+str(i+1) +', id '+atom_labes+'\n')
        fw.write('\n')

    fw.write('\n')
    fw.close()

#get key lines from Gaussian gjf file
def gjfkeylines(lines):
    spacelist=[]
    for i in range(len(lines)):
        #method lines
        if lines[i].startswith('#'):
            mline=i
        #empty lines
        if lines[i].isspace() :
            #repeat empty lines at the end of files
            if len(spacelist)> 1 and i==spacelist[-1]+1:
                break
            spacelist.append(i) 
    #if contains connectivity key word
    ifconn=False
    ifgen = False
    for linestr in lines[mline:spacelist[0]]:
        if 'geom=connectivity' in linestr.lower():
            ifconn=True
        if 'gen' in linestr.lower():
            ifgen=True
    return mline, spacelist, ifconn, ifgen

#get link matrix from connectivity block gjf
def linkmatrix(lines):
    linkm=np.zeros((len(lines),len(lines)), dtype=float)
    for i, linestr in enumerate(lines):
        var=linestr.split()
        if len(var) == 1:
            continue
        else:
            j=1
            while j < len(var):        
                linkm[i][int(var[j])-1]=float(var[j+1])
                linkm[int(var[j])-1][i]=float(var[j+1])
                j=j+2
    return linkm
def run():
    if len(sys.argv) == 2:
        file = sys.argv[1]
        type = os.path.splitext(file)[1]
        print(type)
        if type == '.gjf' or type == '.com':
            gjf2fragments(file)
        elif type == '.xyz':
            xyz2fragments(file)
        else:
            print('Error: unknown file type')
    else: 
        print('Input: xyz/gjf file for fragment(reforme bonds)')
        
run()
        