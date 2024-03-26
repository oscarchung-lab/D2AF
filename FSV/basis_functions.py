import math
import numpy as np
import re
import sys
import pandas as pd
from openbabel import pybel
from itertools import combinations
import copy
from FSV.Molecule import Molecule 
import os 

eleslist = ['H','He',
        'Li','Be','B','C','N','O','F','Ne',
        'Na','Mg','Al','Si','P','S','Cl','Ar',
        'K','Ca','Sc','Ti','V','Cr','Mn','Fe','Co','Ni','Cu','Zn','Ga','Ge','As','Se','Br','Kr',
'Rb','Sr','Y','Zr','Nb','Mo','Tc','Ru','Rh','Pd','Ag','Cd','In','Sn','Sb','Te','I','Xe',
'Cs','Ba',
'La','Ce','Pr','Nd','Pm','Sm','Eu','Gd','Tb','Dy','Ho','Er','Tm','Yb','Lu',
'Hf','Ta','W','Re','Os','Ir','Pt','Au','Hg','Tl','Pb','Bi','Po','At','Rn']

b2a = 0.52917724

# COVALENT_RADII single bond Covalent radii (Angstrom)
CR = {"H": 0.31, "C":  0.76, "O": 0.66, "N": 0.71}
CR_scale = 1.0
current_dir = os.path.dirname(__file__)
Hscalematrix=np.loadtxt(os.path.join(current_dir, 'lib','ONIOM_Hscale.txt'),delimiter=',',dtype=float)
Oscalematrix=np.loadtxt(os.path.join(current_dir, 'lib','ONIOM_Oscale.txt'),delimiter=',',dtype=float)
Cscalematrix=np.loadtxt(os.path.join(current_dir, 'lib','ONIOM_Cscale.txt'),delimiter=',',dtype=float)
Nscalematrix=np.loadtxt(os.path.join(current_dir, 'lib','ONIOM_Nscale.txt'),delimiter=',',dtype=float)

ncpu = 16
jobname = 'FSV'
pal = 1

def eles2numbers(eles):
    numa = len(eles)
    numbers = np.zeros(numa, dtype=int)
    for i, ele in enumerate(eles):
        numbers[i] = eleslist.index(ele) + 1
    return numbers

#check fraglist if repeat element
def check_fraglist(fraglist):
    allfraglist = []
    for frag_i in fraglist:
        allfraglist.extend(frag_i)
    if len(allfraglist) != len(set(allfraglist)):
        sys.exit('fraglist has repeat element')
    print('*'*15+"  fragmentation list  OK "+'*'*15)
    print()
#calculate bond & angle
def getbond(p1,p2):
    return np.linalg.norm(p2-p1) 

def getangle(p1,p2,p3):
    v1 = p1 - p2
    v2 = p3 - p2
    angtmp = math.acos(np.dot(v1,v2)/(np.linalg.norm(v1) * np.linalg.norm(v2)))
    return angtmp*180/math.pi

# for 0-360 style
def gettorsion(p1,p2,p3,p4):
    v1 = np.cross(p2-p1, p3-p2)
    v2 = np.cross(p3-p2, p4-p3)

    v3 = np.cross(v1, v2)

    #v1n = v1/np.linalg.norm(v1)
    #v2n = v2/np.linalg.norm(v2)
    #v3n = v3/np.linalg.norm(v3)   
    
    detsign = np.dot(v1, p4-p3)
    
    angtmp = math.acos(np.dot(v1,v2)/(np.linalg.norm(v1) * np.linalg.norm(v2)))
    if detsign >= 0:
        return angtmp*180/math.pi
    else:
        return 360 - angtmp*(180/math.pi)
# H replace coord2
def link2H(coord1,coord2,scale):
    deviation = coord2 - coord1
    coor = coord1 + scale*(deviation)
    return coor

#From .dat get the frag list begin from 0
def str2list(atomsstr):     
    atomlist = []                                                
    strtmp = re.split(',| |\n',atomsstr)
    #can add code to see if the atomsstr format is correct
    for var in strtmp:
        if '-' in var: # 'num1-num2' case
            numtmp = var.split('-')
            atomlisttmp = list(range(int(numtmp[0])-1,int(numtmp[1])))
            atomlist = atomlist + atomlisttmp
        elif var.isdigit():
            atomlist.append(int(var)-1)                                       
    return atomlist

#output the frag list begin from 1
def list2str(atomslist):  
    atomstr = []   
    for atom in atomslist:
        atomstr.append(str(atom+1))
    return ','.join(atomstr)



# calculate charge and multiplicity (2S+1) for each fragment
def frag_chg_spin(eles, frags, links, linkm, chgl, spinl):
    fragchgspin = []
    for i, frag_i in enumerate(frags):
        chgtmp = 0
        spintmp = 0
        neletmp = 0
        for j, ele_j in enumerate(frag_i):
            chgtmp += chgl[ele_j]
            spintmp += spinl[ele_j]
            neletmp += eleslist.index(eles[ele_j])+1
            if links[i][j] is not None:
                for k in links[i][j]:
                    neletmp += int(linkm[ele_j][k])
        #print('Electron of frag %d: %d'%(i, neletmp+chgtmp))
        #print('Spin of frag %d: %d'%(i, spintmp))
        # the link atom (H, C, O ,N using 1 2 2 3 eletron replace) contribute no extra charge and spin
        if (neletmp+chgtmp) % 2 == 0 and spintmp % 2 != 0:
            print('Warning: the charge %d and spin (2S) %d not match in frag_%d !'%(neletmp, spintmp, i))
            print('Please check the input #charge and #spin !')
            #print('Automaticly correct the spin to 0')

            #spintmp = 0
        elif (neletmp+chgtmp) % 2 != 0 and spintmp % 2 == 0:
            print('Warning: the charge %d and spin (2S) %d not match in frag_%d !'%(neletmp, spintmp, i))
            print('Please check the input #charge and #spin !')
            #print('Automaticly correct the spin to 1')
            print('')
            #spintmp = 1

        fragchgspin.append([chgtmp, spintmp])
    return fragchgspin

def strcuture2cluster_frag(linkmatrix, fraglist):
    # each frag contain defined by a fraglist
    fragatomlist = fraglist
    linkatomlist = []
    for i in range(len(fraglist)):
        #fraglist_i = fraglist[i] 
        link_i = []  
        for atomtmp in fraglist[i]:   
            linktmp = np.nonzero(linkmatrix[atomtmp][:])
            link_i_atomj = []
            for linkatomtmp in linktmp[0]:
                if linkatomtmp not in fraglist[i]:
                    link_i_atomj.append(linkatomtmp)
                #else:
                #    link_i_atomj.append(-1)
            link_i.append(link_i_atomj)
        linkatomlist.append(link_i)

    return fragatomlist, linkatomlist

# write frag xyz string (only coordinates) using O for double bond
def write_frag_xyz(frag_list,link_list,eles,coords,linkm):
    numa = 0
    xyzstr = []
    for i, frag_i in enumerate(frag_list):
        xyzstr_i = []
        #write frag atoms
        for j, jlabel in enumerate(frag_i):
            coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%(eles[jlabel], coords[jlabel][0],coords[jlabel][1],coords[jlabel][2])
            xyzstr_i.append(coordlinetmp)
        #write linkatom_i 
        for j, jlabel in enumerate(frag_i):
            if link_list[i][j] is not None:
                for k in link_list[i][j]:
                    if linkm[jlabel][k] == 1.0 : 
                        scaletmp = Hscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                        coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                        coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%('H ', coordH[0],coordH[1],coordH[2])
                    elif linkm[jlabel][k] == 2.0 :
                        # link atom is O
                        if eles[k] == 'O':
                            scaletmp = Oscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                            coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                            coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%('O ', coordH[0],coordH[1],coordH[2])
                        else:
                            scaletmp = Cscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                            coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                            coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%('C ', coordH[0],coordH[1],coordH[2])
                        #scaletmp = Oscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                        #coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                        #coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%('O ', coordH[0],coordH[1],coordH[2])
                    elif linkm[jlabel][k] == 3.0 :
                        scaletmp = Nscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                        coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                        coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%('N ', coordH[0],coordH[1],coordH[2])
                    else:
                        sys.exit('Error: the cut bond should be single or double or triple bond between atoms '+str(jlabel+1)+' and '+str(k+1))
                    xyzstr_i.append(coordlinetmp)
        xyzstr.append(xyzstr_i)
    return xyzstr


# write frag xyz string (only coordinates) using C atom for double bond for =C-C= case
def write_frag_xyz_CH2_CH2(frag_list,link_list,eles,coords,linkm):
    numa = 0
    xyzstr = []
    index_frag = check_bondcut_CH2_CH2_C(eles, frag_list, link_list,coords, linkm)
    for i, frag_i in enumerate(frag_list):
        xyzstr_i = []
        #write frag atoms
        for j, jlabel in enumerate(frag_i):
            coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%(eles[jlabel], coords[jlabel][0],coords[jlabel][1],coords[jlabel][2])
            xyzstr_i.append(coordlinetmp)
        #write linkatom_i 
        for j, jlabel in enumerate(frag_i):
            if link_list[i][j] is not None:
                for k in link_list[i][j]:
                    if linkm[jlabel][k] == 1.0 : 
                        scaletmp = Hscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                        coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                        coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%('H ', coordH[0],coordH[1],coordH[2])
                    elif linkm[jlabel][k] == 2.0:
                        if i in index_frag:
                            scaletmp = Cscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                            coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                            coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%('C ', coordH[0],coordH[1],coordH[2])
                        else:
                            # link atom is O
                            if eles[k] == 'O':
                                scaletmp = Oscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                                coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                                coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%('O ', coordH[0],coordH[1],coordH[2])
                            else:
                                scaletmp = Cscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                                coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                                coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%('C ', coordH[0],coordH[1],coordH[2])
                    elif linkm[jlabel][k] == 3.0:
                        scaletmp = Nscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                        coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                        coordlinetmp = '%-16s%14.8f%14.8f%14.8f \n'%('N ', coordH[0],coordH[1],coordH[2])
                    else:
                        sys.exit('Error: the cut bond should be single or double or triple bond between atoms '+str(jlabel+1)+' and '+str(k+1))
                    xyzstr_i.append(coordlinetmp)
        xyzstr.append(xyzstr_i)
    return xyzstr

#  frag  molecule 
def frag_molecule(frag_list,link_list,eles,coords,linkm, fragchgspin, name=''):
    mols = []
    for i, frag_i in enumerate(frag_list):
        mol = Molecule([],[])
        #write frag atoms
        for j, jlabel in enumerate(frag_i):
            mol.add_atom(eles[jlabel], coords[jlabel][:])
        #write linkatom_i 
        for j, jlabel in enumerate(frag_i):
            if link_list[i][j] is not None:
                for k in link_list[i][j]:
                    if linkm[jlabel][k] == 1.0 : 
                        scaletmp = Hscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                        eletmp = 'H'
                        coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                        
                    elif linkm[jlabel][k] == 2.0 :
                        # link atom is O
                        if eles[k] == 'O':
                            scaletmp = Oscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                            eletmp = 'O'
                            coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                        else:
                            scaletmp = Cscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                            eletmp = 'C'
                            coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                            
                    elif linkm[jlabel][k] == 3.0 :
                        scaletmp = Nscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                        eletmp = 'N'
                        coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                        
                    else:
                        sys.exit('Error: the cut bond should be single or double or triple bond between atoms '+str(jlabel+1)+' and '+str(k+1))
                    mol.add_atom(eletmp, coordH)
        mol.set_charge(int(fragchgspin[i][0]))
        mol.set_spin(int(fragchgspin[i][1]))
        mol.set_name(name+'_'+str(i))      
        mols.append(mol)
    return mols


#  frag molecule (only coordinates) using C atom for double bond for =C-C= case
def frag_molecule_CH2_CH2(frag_list,link_list,eles,coords,linkm,fragchgspin, name=''):
    mols = []
    index_frag = check_bondcut_CH2_CH2_C(eles, frag_list, link_list,coords, linkm)
    for i, frag_i in enumerate(frag_list):
        mol = Molecule([],[])
        #write frag atoms
        for j, jlabel in enumerate(frag_i):
            mol.add_atom(eles[jlabel], coords[jlabel][:])
        #write linkatom_i 
        for j, jlabel in enumerate(frag_i):
            if link_list[i][j] is not None:
                for k in link_list[i][j]:
                    if linkm[jlabel][k] == 1.0 : 
                        scaletmp = Hscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                        eletmp = 'H'
                        coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                        
                    elif linkm[jlabel][k] == 2.0:
                        if i in index_frag:
                            scaletmp = Cscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                            eletmp = 'C'
                            coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                            
                        else:
                            # link atom is O
                            if eles[k] == 'O':
                                scaletmp = Oscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                                eletmp = 'O'
                                coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                            else:
                                scaletmp = Cscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                                eletmp = 'C'
                                coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                            #scaletmp = Oscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                            #eletmp = 'O'
                            #coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                            
                    elif linkm[jlabel][k] == 3.0:
                        scaletmp = Nscalematrix[eleslist.index(eles[k])][eleslist.index(eles[jlabel])]
                        eletmp = 'N'
                        coordH = link2H(coords[jlabel][:],coords[k][:],scaletmp)
                        
                    else:
                        sys.exit('Error: the cut bond should be single or double or triple bond between atoms '+str(jlabel+1)+' and '+str(k+1))
                    mol.add_atom(eletmp, coordH)
        mol.set_charge(int(fragchgspin[i][0]))
        mol.set_spin(int(fragchgspin[i][1]))
        mol.set_name(name+'_'+str(i))  
        mols.append(mol)
    return mols

#calculate the difference of internal coordinates between ref and conf
def delta_internal_values(refvalues, confvalues):
    if len(refvalues) == len(confvalues):
        return [x - y for x, y in zip(confvalues, refvalues)]
    else:
        sys.exit('Error: the length of refvalues and confvalues should be the same')


# calculate delta E between ref and conf
def delta_E(Eref, Econf):
    if len(Eref) == len(Econf):
        return [(x - y)*627.51 for x, y in zip(Econf, Eref)]
    else:
        sys.exit('Error: the length of Eref and Econf should be the same')


# get the internal coordinates list (bond & angle) according to the link matrix
def linkm2intercoord(linkm):
    anglebond = []
    numa = linkm.shape[0]
    
    for i in range(numa):
        atomtmp = np.nonzero(linkm[i][:])
        atomlinks = list(atomtmp[0])
        for j in atomlinks:
            bondtmp = [i]
            if j > i:
                bondtmp.append(j)
                anglebond.append(bondtmp)
        angleatoms = combinations(atomlinks,2)
        for atompair in angleatoms:
            angletmp = []
            if len(atompair) == 2:
                angletmp.append(atompair[0])
                angletmp.append(i)
                angletmp.append(atompair[1])
                anglebond.append(angletmp)
    return anglebond

# remove exclude bond/angle
def remove_bond_angle(orilist, exclude):
    update_list = copy.deepcopy(orilist)
    for listtmp in exclude:
        if listtmp in update_list:
            update_list.remove(listtmp)
        else:
            print('Warning: '+str(listtmp)+' is not in the frag list!')
    return update_list

# add include bond/angle/torsion
def add_bond_angle(orilist, include):
    update_list = copy.deepcopy(orilist)
    for listtmp in include:
        if listtmp in update_list:
            print('Warning: '+str(listtmp)+' is already in the frag list!')
        else:
            update_list.append(listtmp)
    return update_list

# get the internal coordinates values according to the coordinates list
def get_intercoord_values(intercoordlist, coord):
    intercoord_values = []
    for coordtmp in intercoordlist:
        if len(coordtmp) == 2: #bond
            intercoord_values.append(getbond(coord[coordtmp[0]][:],coord[coordtmp[1]][:])) 
        elif len(coordtmp) == 3: #angle
            intercoord_values.append(getangle(coord[coordtmp[0]][:],coord[coordtmp[1]][:],coord[coordtmp[2]][:]))
        elif len(coordtmp) == 4: #torsion
            intercoord_values.append(gettorsion(coord[coordtmp[0]][:],coord[coordtmp[1]][:],coord[coordtmp[2]][:],coord[coordtmp[3]][:]))
        else:
            sys.exit('Error: only bond/angle/torsion available for now!')
    return intercoord_values

def check_Cbond(linkm,bond,linkbonds):
    moreatoms = []
    yn1 = False
    yn2 = False
    #a1
    if len(linkbonds[0]) == 0:
        return False, moreatoms
    else:
        for linktmp in linkbonds[0]:
            if linkm[bond[0]][linktmp] == 2.0:
                yn1 = True
                moreatoms.append(linktmp)
    #a2
    if len(linkbonds[1]) == 0:
        return False, moreatoms
    else:
        for linktmp in linkbonds[1]:
            if linkm[bond[1]][linktmp] == 2.0:
                yn2 = True
                moreatoms.append(linktmp)

    if yn1 and yn2:
        return True, moreatoms
    else:
        return False, moreatoms

#update CH2=C-C=CH2 to replace O=C-C=O cases
#only bond was considered
def update_bondcut_CH2_CH2(eles, fraglist, linklist,linkm):
    new_frag_list = []
    new_link_list = []
    for i, frag_i in enumerate(fraglist):
        if len(frag_i) == 2 and eles[frag_i[0]] == 'C' and eles[frag_i[1]] == 'C':
            checkyn, atoms = check_Cbond(linkm,frag_i,linklist[i])
            if checkyn:
                fragbondtmp = []

                fragbondtmp.append(frag_i+atoms)

                fragtmp, linktmp = strcuture2cluster_frag(linkm,fragbondtmp)
                new_frag_list.append(fragtmp[0])
                new_link_list.append(linktmp[0])
            else:
                new_frag_list.append(frag_i)
                new_link_list.append(linklist[i])
        else:
            new_frag_list.append(frag_i)
            new_link_list.append(linklist[i])
    return new_frag_list, new_link_list

#check C=C-C=C to replace O=C-C=O cases
#only bond was considered
def check_bondcut_CH2_CH2_C(eles, fraglist, linklist, coords, linkm):
    nindex_frag = []
    for i, frag_i in enumerate(fraglist):
        if len(frag_i) == 2 and eles[frag_i[0]] == 'C' and eles[frag_i[1]] == 'C':
            checkyn, atoms = check_Cbond(linkm,frag_i,linklist[i])
            if checkyn:
                nindex_frag.append(i)
    if len(nindex_frag) > 0:
        print('Warning: please check the following frag, where =C-C= structure exist!')
        print(nindex_frag)
    return nindex_frag

# generate conf frag xyz based on ref xyz with given internal coordinates
def getxyzupdate(xyzfilestr,value,aorb):
    
    mol = pybel.readstring("xyz",xyzfilestr)
    refzmat = mol.write("gzmat")
    refzmat = refzmat.split('\n')
    refzmatcopy = copy.deepcopy(refzmat)
    if aorb == 'bond':
        for i, zmatstr in enumerate(refzmat):
            if zmatstr[0:3] == 'r2=':
                refzmatcopy[i] = 'r2=%7.4f'%value
                break
    elif aorb == 'angle':
        for i, zmatstr in enumerate(refzmat):
            if zmatstr[0:3] == 'a3=':
                refzmatcopy[i] = 'a3=%7.2f'%value
                break
    mol1 = pybel.readstring("gzmat",'\n'.join(refzmatcopy))
    xyzstrtmp = mol1.write("xyz").split('\n')[2:-1]
    
    if aorb == 'torsion':
        mol.OBMol.SetTorsion(1, 2, 3, 4, value/180.0*math.pi)
        xyzstrtmp = mol.write("xyz").split('\n')[2:-1]
    
    xyzstrout = [s + '\n' for s in xyzstrtmp]
    
    return xyzstrout

#save bond & angle list into a file
def save_bond_angle_list(bond_angle_list):
    fw = open(jobname+'_bond_angle.dat','w')
    for i, bond_angle in enumerate(bond_angle_list):
        if len(bond_angle) == 2: #bond
            fw.write('%d %d \n'%(bond_angle[0]+1,bond_angle[1]+1))
        elif len(bond_angle) == 3: #angle
            fw.write('%d %d %d \n'%(bond_angle[0]+1,bond_angle[1]+1,bond_angle[2]+1))
        else: #angle
            fw.write('%s\n'%(' '.join([str(x) for x in bond_angle])))
    fw.close()
    print('Bonds/angles data are saved in '+jobname+'_bond_angle.dat')

# generate conf frag based on ref xyz with only internal coordinates modified
def get_frag_mol_conf(frag_mol_ref, intercoordlist, internalvalues, name=''):
    confmol = []
    for i, mol in enumerate(frag_mol_ref):
        xyzstr = mol2xyzline(mol)
        headstr = '%-5d \n'%mol.get_num_atoms() + '\n'
        xyzfilestr = headstr+''.join(xyzstr)
        if len(intercoordlist[i]) == 2: #bond
            xyzstrtmp = getxyzupdate(xyzfilestr,internalvalues[i],'bond')
        elif len(intercoordlist[i]) == 3: #angle
            xyzstrtmp = getxyzupdate(xyzfilestr,internalvalues[i],'angle')
        elif len(intercoordlist[i]) == 4: #torsion
            xyzstrtmp = getxyzupdate(xyzfilestr,internalvalues[i],'torsion')
        else:
            sys.exit('Error: only bond/angle/torsion available for now!')
        
        moltmp = xyzline2mol(xyzstrtmp)

        moltmp.set_charge(mol.charge)
        moltmp.set_spin(mol.spin)
        moltmp.set_name(name+'_'+str(i))  
        confmol.append(moltmp)
    return confmol

#molecule to xyzlines
def mol2xyzline(mol):
    eles = mol.elements
    coord = mol.coordinates
    xyzstr = ''
    for i in range(mol.get_num_atoms()):
        xyzstr += '%-16s%14.8f%14.8f%14.8f \n'%(
            eles[i],coord[i][0],coord[i][1],coord[i][2])
    return xyzstr

#xyzlines to molecule 
def xyzline2mol(xyzlines):
    molecule = Molecule([], [])
    for xyzline in xyzlines:
        vartmp = xyzline.split()
        ele = vartmp[0]
        coord = np.array([float(i) for i in vartmp[1:4]])
        molecule.add_atom(ele,coord)
    return molecule

### bondcut + fragmentation functions ###
def find_sublist_pos(num_in, list_in):
    for i, list_i in enumerate(list_in):
        if num_in in list_i:
            return i
    return -1

#unique repeat element inlist
def list_unique(old_list):
    new_list = []
    for i in old_list:
        if i not in new_list:
            new_list.append(i)
    return new_list


# reorder frag list based on link info to avoid gzmat problem
def reorder_fraglist(bondangle,fraglist,linkm):
    fraglisttmp = copy.deepcopy(fraglist)
    new_list = copy.deepcopy(bondangle)
    #print(bondangle)
    #print(fraglist)
    #reorder according to the link
    atoms = []
    for atomtmp in bondangle:
        if atomtmp not in fraglisttmp:
            pass
        else:
            fraglisttmp.remove(atomtmp)
            atoms.append(atomtmp)
            while len(fraglisttmp) > 0:
                newatoms = []
                for select_a in atoms:
                    linktmp = np.nonzero(linkm[select_a][:])
                    if len(linktmp[0]) == 0:
                        break
                    else:
                        for link in linktmp[0]:
                            if link in fraglisttmp and link not in new_list:
                                fraglisttmp.remove(link)
                                newatoms.append(link)
                                new_list.append(link)
                            if link in fraglisttmp and link in new_list:
                                fraglisttmp.remove(link)
                                newatoms.append(link)
                if len(newatoms) == 0:
                    break
                atoms = copy.deepcopy(newatoms)

    if len(new_list) != len(list_unique(bondangle+fraglist)):
        new_list = list_unique(bondangle+fraglist)
    return new_list
#update bondcut list based on coordination list
def update_internal_coordination(internal_list_in, coordlist, linkm):
    internal_list_out = []
    internal_list_out_act = []

    allcoordlist = []

    for coord_i in coordlist:
        allcoordlist.extend(coord_i)
    
    for sublist_i in internal_list_in:
        pos1 = -1
        pos2 = -1
        pos3 = -1
        if len(sublist_i) == 2: #bond
            if sublist_i[0] in allcoordlist and sublist_i[1] in allcoordlist:                
                pos1 = find_sublist_pos(sublist_i[0],coordlist)
                pos2 = find_sublist_pos(sublist_i[1],coordlist)

                if pos1 == pos2: #same coordination list
                    internal_list_out.append(sublist_i)
                    #print(sublist_i)
                    #print(coordlist[pos1])
                    listtmp =  reorder_fraglist(sublist_i, coordlist[pos1], linkm)
                    internal_list_out_act.append(listtmp)
            else:
                pass   
        #problem with angle @@ need to decide if calculate this
        elif len(sublist_i) == 3: #angle
            if sublist_i[0] in allcoordlist and sublist_i[1] in allcoordlist and sublist_i[2] in allcoordlist:
                pos1 = find_sublist_pos(sublist_i[0],coordlist)
                pos2 = find_sublist_pos(sublist_i[1],coordlist)
                pos3 = find_sublist_pos(sublist_i[2],coordlist)

                if pos1 == pos2 == pos3: #same coordination list
                    internal_list_out.append(sublist_i)
                    listtmp =  reorder_fraglist(sublist_i, coordlist[pos1], linkm)
                    internal_list_out_act.append(listtmp)
            else:
                pass
        #no torsion in coordination
    return internal_list_out,internal_list_out_act

# check if ele in coordinate list in fraglist
def check_coord_fraglist(coordlist, fraglist):
    fraglist_clean = copy.deepcopy(fraglist)
    fraglist_act = copy.deepcopy(fraglist)

    for coord_i in coordlist:
        for frag_i in fraglist:
            if set(coord_i) == set(frag_i):
                fraglist_clean.remove(frag_i)
            else:
                if coord_i not in fraglist_act:
                    fraglist_act.append(coord_i)
    return fraglist_clean, fraglist_act

#update bondcut list based on fraglist
def update_internal_frag(internal_list_in, fraglist, linkm):
    internal_list_out = []
    internal_list_out_act = []
    allfraglist = []

    for frag_i in fraglist:
        allfraglist.extend(frag_i)
    
    for sublist_i in internal_list_in:
        pos = -1
        if len(sublist_i) == 2: #bond
            if sublist_i[0] not in allfraglist and sublist_i[1] not in allfraglist:
                internal_list_out.append(sublist_i)
                internal_list_out_act.append(sublist_i)
            elif sublist_i[0] in allfraglist and sublist_i[1] not in allfraglist:
                internal_list_out.append(sublist_i)
                
                pos = find_sublist_pos(sublist_i[0],fraglist)
                listtmp =  reorder_fraglist(sublist_i, fraglist[pos], linkm)
                internal_list_out_act.append(listtmp)
            elif sublist_i[0] not in allfraglist and sublist_i[1] in allfraglist:
                internal_list_out.append(sublist_i)
                
                pos = find_sublist_pos(sublist_i[1],fraglist)
                listtmp =  reorder_fraglist(sublist_i, fraglist[pos], linkm)
                internal_list_out_act.append(listtmp)
            elif sublist_i[0] in allfraglist and sublist_i[1] in allfraglist:
                pos1 = find_sublist_pos(sublist_i[0],fraglist)
                pos2 = find_sublist_pos(sublist_i[1],fraglist)
                
                if pos1 != pos2:
                    internal_list_out.append(sublist_i)
                    listtmp0 =  reorder_fraglist(sublist_i, fraglist[pos1], linkm)
                    listtmp =  reorder_fraglist(listtmp0, fraglist[pos2], linkm)
                    internal_list_out_act.append(listtmp)  

        elif len(sublist_i) == 3: #angle
            if sublist_i[0] not in allfraglist and sublist_i[1] not in allfraglist and sublist_i[2] not in allfraglist:
                internal_list_out.append(sublist_i)
                internal_list_out_act.append(sublist_i)
            elif sublist_i[0] in allfraglist and sublist_i[1] not in allfraglist and sublist_i[2] not in allfraglist:
                internal_list_out.append(sublist_i)

                pos = find_sublist_pos(sublist_i[0],fraglist)
                listtmp =  reorder_fraglist(sublist_i, fraglist[pos], linkm)
                internal_list_out_act.append(listtmp)
            elif sublist_i[0] not in allfraglist and sublist_i[1] in allfraglist and sublist_i[2] not in allfraglist:
                internal_list_out.append(sublist_i)
                
                pos = find_sublist_pos(sublist_i[1],fraglist)
                listtmp =  reorder_fraglist(sublist_i, fraglist[pos], linkm)
                internal_list_out_act.append(listtmp)
            elif sublist_i[0] not in allfraglist and sublist_i[1] not in allfraglist and sublist_i[2] in allfraglist:
                internal_list_out.append(sublist_i)
                
                pos = find_sublist_pos(sublist_i[2],fraglist)
                listtmp =  reorder_fraglist(sublist_i, fraglist[pos], linkm)
                internal_list_out_act.append(listtmp)
            else:
                pass
        elif len(sublist_i) == 4: #torsion
            # 1-2-3-4 not in fraglist
            if sublist_i[0] not in allfraglist and sublist_i[1] not in allfraglist and sublist_i[2] not in allfraglist and sublist_i[3] not in allfraglist:
                internal_list_out.append(sublist_i)
                internal_list_out_act.append(sublist_i)
                
            # 1 in fraglist
            elif sublist_i[0] in allfraglist and sublist_i[1] not in allfraglist and sublist_i[2] not in allfraglist and sublist_i[3] not in allfraglist:
                internal_list_out.append(sublist_i)

                pos = find_sublist_pos(sublist_i[0],fraglist)
                listtmp =  reorder_fraglist(sublist_i, fraglist[pos], linkm)
                internal_list_out_act.append(listtmp)
            # 4 in fraglist    
            elif sublist_i[0] not in allfraglist and sublist_i[1] not in allfraglist and sublist_i[2] not in allfraglist and sublist_i[3] in allfraglist:
                internal_list_out.append(sublist_i)

                pos = find_sublist_pos(sublist_i[3],fraglist)
                listtmp =  reorder_fraglist(sublist_i, fraglist[pos], linkm)
                internal_list_out_act.append(listtmp)
                
            # 1-2 in fraglist    
            elif sublist_i[0] in allfraglist and sublist_i[1] in allfraglist and sublist_i[2] not in allfraglist and sublist_i[3] not in allfraglist:
                pos1 = find_sublist_pos(sublist_i[0],fraglist)
                pos2 = find_sublist_pos(sublist_i[1],fraglist)
                
                if pos1 == pos2: #same frag
                    internal_list_out.append(sublist_i)
                    listtmp =  reorder_fraglist(sublist_i, fraglist[pos1], linkm)
                    internal_list_out_act.append(listtmp)
                
            # 3-4 in fraglist    
            elif sublist_i[0] not in allfraglist and sublist_i[1] not in allfraglist and sublist_i[2] in allfraglist and sublist_i[3] in allfraglist:
                pos1 = find_sublist_pos(sublist_i[2],fraglist)
                pos2 = find_sublist_pos(sublist_i[3],fraglist)
                
                if pos1 == pos2: #same frag
                    internal_list_out.append(sublist_i)
                    listtmp =  reorder_fraglist(sublist_i, fraglist[pos1], linkm)
                    internal_list_out_act.append(listtmp)   
            
    return internal_list_out,internal_list_out_act

# check link atoms distance
def check_link_dist(fraglist, linklist, mols):
    # atoms in mol order: fraglist + linklist
    for i, mol in enumerate(mols):
        frag_atomnum = len(fraglist[i])
        mol_atomnum = mol.get_num_atoms()
        #linkatoms = [element for sublist in linklist[i] for element in sublist]
        linkatoms = []
        for sublist in linklist[i]:
            for element in sublist:
                if element in linkatoms:
                    print("Error: atom %d appears twice as link atom!"%element)
                linkatoms.append(element)
        
        link_atomnum = len(linkatoms)
        elelist = mol.elements
        #check atom numbers
        if mol_atomnum != frag_atomnum + link_atomnum:
            print('Warning: Atom number of mol_%d (%d) do not equal the sum of fragment number (%d) and link atom number (%d)' % (i, mol_atomnum, frag_atomnum, link_atomnum))
        
        for q in range(frag_atomnum, mol_atomnum):
            for p in range(q+1, mol_atomnum):
                dis_pq = np.linalg.norm(mol.get_atom_coordinates(p) - mol.get_atom_coordinates(q))
                bond_r = (CR[elelist[p]] + CR[elelist[q]]) * CR_scale
                if dis_pq < bond_r:
                    #print(p,q)
                    #print('Distance between (%f6.3 < %f6.3)'%(dis_pq, bond_r))
                    print('Distance between link atom warning:  (%d, %d) in Mol %d'%(linkatoms[q-frag_atomnum], linkatoms[p-frag_atomnum], i))
                    
                    
                    