import sys
import os
import numpy as np 
import OBSV.basis_functions as bf
from OBSV import inputs
import pandas as pd
from OBSV import Results
import copy
from OBSV.Molecule import Molecule
from OBSV.Calculator import calculate_mols

'''
the frist step of fragmentation
the input contains: 
    calculator: Gaussian/xTB/ANI
        method lines(addition lines for Gaussian)
    
    structures: ref & conf(multiply), atomic charge & spin 
    
    fragmentation info: 
        method = 1: fraglist
        method = 2: include/exclude
        method = 3: fraglist/coordinationlist/include/exclude

    ref: in Gaussian gjf format
    conf: gjf or xyz(for multiple conformers)
'''
def fragmentations(calculator,method,ref,conf,chgf=[],spinf=[],input_para=None):
    # ref structure, linkmatrix, method and additional lines for Gaussian 
    elelist_ref, coords_ref, coords_confs, matrix_link_ref, addpara = inputs.read_ref_conf(ref,conf)
    
    num_atom = len(elelist_ref)
    num_conf = coords_confs.shape[0]

    print('*'*15+' %d atoms in input structure !'%num_atom+'*'*15)
    print('*'*15+' %d structure in conformer input!'%num_conf+'*'*15)
    chglist, spinlist = inputs.getatomic_chg_spin(num_atom, chgf, spinf)

    # method
    method = input_para['method']
    if method == 1: # fragmentation
        fraglist = input_para['fraglist']
        bf.check_fraglist(fraglist)

        ref_mol, conf_mols = fragmentation(elelist_ref, coords_ref, coords_confs, matrix_link_ref, chglist, spinlist, fraglist)
        
        Results.refmols2xyz(ref_mol,'M1')
        Results.confsmols2xyz(conf_mols,'M1')
        print('Structures of subsystems are saved as Ref_M1.xyz and Conf_M1.xyz!')
        
        ref_esp = calculate_mols(ref_mol,calculator, addpara)

        if num_conf == 1:
            conf_mol = conf_mols[0]
            print('*'*15+'conf '+'*'*15)
            conf_esp = calculate_mols(conf_mol,calculator, addpara)
                       
            strain = bf.delta_E(ref_esp, conf_esp)
            
            Results.fragresult2xlsx(fraglist, strain)

            mol_conf = Molecule(elelist_ref,coords_confs[0][:][:])
            mol_conf.set_name('Conf')
            Results.Get_pml_fragmentation(mol_conf, fraglist, strain)
        #multiple conformers
        else:
            strain_confs = []
            for i, conf_mol in enumerate(conf_mols):
                print('*'*15+'conf %d'%i+'*'*15)
                conf_esp = calculate_mols(conf_mol,calculator, addpara)
                strain = bf.delta_E(ref_esp, conf_esp)
                
                strain_confs.append(strain)
                
            Results.fragresults2xlsx(fraglist, strain_confs,'_all')    
            minene, maxene = Results.get_max_min(fraglist, [], strain_confs, [])
            
            for i, conf_mol in enumerate(conf_mols):
                mol_conf_i = Molecule(elelist_ref,coords_confs[i][:][:])
                mol_conf_i.set_name('Conf_%d'%i)
                Results.Get_pml_fragmentation(mol_conf_i, fraglist, strain_confs[i], maxene=maxene, minene=minene)
  
    elif method == 2:
        include = input_para['include']
        exclude = input_para['exclude']

        ref_mol, conf_mols, internals, ref_internal, confs_internal = bondcut(elelist_ref, coords_ref, coords_confs, matrix_link_ref, chglist, spinlist,include=include, exclude=exclude)
        
        Results.refmols2xyz(ref_mol,'M2')
        Results.confsmols2xyz(conf_mols,'M2')
        print('Structures of subsystems are saved as Ref_M2.xyz and Conf_M2.xyz!')
        
        ref_esp = calculate_mols(ref_mol,calculator, addpara)

        if num_conf == 1:
            conf_mol = conf_mols[0]
            conf_esp = calculate_mols(conf_mol,calculator, addpara)
            strain = bf.delta_E(ref_esp, conf_esp)
            delta_values = bf.delta_internal_values(ref_internal, confs_internal[0])
            Results.bondcutresult2xlsx(internals, strain, delta_values)

            mol_conf = Molecule(elelist_ref,coords_confs[0][:][:])
            mol_conf.set_name('Conf')
            Results.Get_pml_bondcut(mol_conf, internals, strain, delta_values)
        else:    
            strain_confs = []
            delta_values_confs = []
            for i, conf_mol in enumerate(conf_mols):
                print('*'*15+'conf %d'%i+'*'*15)
                conf_esp = calculate_mols(conf_mol,calculator, addpara)
                strain = bf.delta_E(ref_esp, conf_esp)
                
                delta_values = bf.delta_internal_values(ref_internal, confs_internal[i])
                
                strain_confs.append(strain)
                delta_values_confs.append(delta_values)
                
            Results.bondcutresults2xlsx(internals, strain_confs, delta_values_confs, '_all')
            minene, maxene = Results.get_max_min([], internals, [], strain_confs)
            
            for i, conf_mol in enumerate(conf_mols):
                mol_conf_i = Molecule(elelist_ref,coords_confs[i][:][:])
                mol_conf_i.set_name('Conf_%d'%i)
                Results.Get_pml_bondcut(mol_conf_i, internals, strain_confs[i], delta_values_confs[i],maxene=maxene, minene=minene)

    elif method == 3:  
        fraglist = input_para['fraglist']
        include = input_para['include']
        exclude = input_para['exclude']
        coordlist = input_para['coordination']

        ref_mol, conf_mols, internals, ref_internal, confs_internal, fraglist_clean, frag_ref_mol, frag_conf_mols = bondcut_fragmentation(elelist_ref, coords_ref, coords_confs, matrix_link_ref, chglist, spinlist, fraglist=fraglist, coordlist=coordlist, include=include, exclude=exclude)
        
        if len(frag_ref_mol) == 0:
            Results.refmols2xyz(ref_mol,'M3')
            Results.confsmols2xyz(conf_mols,'M3')
        else:
            Results.refmols2xyz(ref_mol+frag_ref_mol,'M3')
            conf_mols_all = [conf_mols[i]+frag_conf_mols[i] for i in range(num_conf)]
            Results.confsmols2xyz(conf_mols_all,'M3')   
            
        print('Structures of subsystems are saved as Ref_M3.xyz and Conf_M3.xyz!')
        
        if len(frag_ref_mol) == 0: #all fraglist are coordination list
            ref_esp = calculate_mols(ref_mol,calculator, addpara)
            
            if num_conf == 1:
                conf_mol = conf_mols[0]
                conf_esp = calculate_mols(conf_mol,calculator, addpara)

                strain = bf.delta_E(ref_esp, conf_esp)
                delta_values = bf.delta_internal_values(ref_internal, confs_internal[0])
                Results.bondcutresult2xlsx(internals, strain, delta_values)
                
                mol_conf = Molecule(elelist_ref,coords_confs[0][:][:])
                mol_conf.set_name('Conf')
                Results.Get_pml_bondcut(mol_conf, internals, strain, delta_values)
            else:  
                strain_confs = []
                delta_values_confs = []  
                for i, conf_mol in enumerate(conf_mols):
                    print('*'*15+'conf %d'%i+'*'*15)
                    conf_esp = calculate_mols(conf_mol,calculator, addpara)
                    strain = bf.delta_E(ref_esp, conf_esp)

                    delta_values = bf.delta_internal_values(ref_internal, confs_internal[i])
                    
                    strain_confs.append(strain)
                    delta_values_confs.append(delta_values)
                    
                Results.bondcutresults2xlsx(internals, strain_confs, delta_values_confs, '_all')
                minene, maxene = Results.get_max_min([], internals, [], strain_confs)
            
                for i, conf_mol in enumerate(conf_mols):
                    mol_conf_i = Molecule(elelist_ref,coords_confs[i][:][:])
                    mol_conf_i.set_name('Conf_%d'%i)
                    Results.Get_pml_bondcut(mol_conf_i, internals, strain_confs[i], delta_values[i],maxene=maxene, minene=minene)
                
        else:
            ref_esp = calculate_mols(ref_mol,calculator, addpara)
            frag_ref_esp = calculate_mols(frag_ref_mol,calculator, addpara)

            if num_conf == 1:
                conf_mol = conf_mols[0]
                conf_esp = calculate_mols(conf_mol,calculator, addpara)
                frag_conf_esp = calculate_mols(frag_conf_mols[0],calculator, addpara)
                
                strain = bf.delta_E(ref_esp, conf_esp)
                strain_frag = bf.delta_E(frag_ref_esp, frag_conf_esp)
                delta_values = bf.delta_internal_values(ref_internal, confs_internal[0])
                
                Results.bondcutfragresult2xlsx(internals, strain, delta_values, fraglist_clean, strain_frag)
                mol_conf = Molecule(elelist_ref,coords_confs[0][:][:])
                mol_conf.set_name('Conf')
                Results.Get_pml_bondcut_fragmentation(mol_conf, internals, strain, delta_values, fraglist_clean, strain_frag)
                
            else: 
                strain_confs = []
                delta_values_confs = [] 
                strain_frag_confs = []
                for i, conf_mol in enumerate(conf_mols):
                    print('*'*15+'conf %d'%i+'*'*15)
                    conf_esp = calculate_mols(conf_mol,calculator, addpara)
                    frag_conf_esp = calculate_mols(frag_conf_mols[i],calculator, addpara)

                    strain = bf.delta_E(ref_esp, conf_esp)
                    strain_frag = bf.delta_E(frag_ref_esp, frag_conf_esp)

                    delta_values = bf.delta_internal_values(ref_internal, confs_internal[i])
                    
                    strain_confs.append(strain)
                    delta_values_confs.append(delta_values)
                    strain_frag_confs.append(strain_frag)
                    
                Results.bondcutfragresults2xlsx(internals, strain_confs, delta_values_confs, fraglist_clean, strain_frag_confs, 'all')
                minene, maxene = Results.get_max_min(fraglist_clean, internals, strain_frag_confs, strain_confs)
                for i, conf_mol in enumerate(conf_mols):
                    mol_conf_i = Molecule(elelist_ref,coords_confs[i][:][:])
                    mol_conf_i.set_name('Conf_%d'%i)
                    Results.Get_pml_bondcut_fragmentation(mol_conf_i, internals, strain_confs[i], delta_values_confs[i], fraglist_clean, strain_frag_confs[i], maxene=maxene, minene=minene)

    else:
        print('method number %d not supported!'%method)

# fragementaion based on atom list
def fragmentation(elelist_ref, coords_ref, coords_confs,  matrix_link_ref, chglist, spinlist, fraglist):
    num_conf = coords_confs.shape[0]
    #get frag and link atoms 
    frag_ref, link_ref = bf.strcuture2cluster_frag(matrix_link_ref, fraglist)
    #frag_conf, link_conf = strcuture2cluster_frag(matrix_link_conf, fraglist)
    
    print('*'*15+"  Charge and Spin  "+'*'*15)
    # check charge and multiplicity for each fragment
    fragchgspin = bf.frag_chg_spin(elelist_ref,frag_ref, link_ref,  matrix_link_ref, chglist, spinlist)
    
    print('*'*15+"  Charge and Spin  finished!  "+'*'*15)
    print()

    print('*'*15+"  Get ref & conf fragments structure  "+'*'*15)
    # get frag lines containing ele and coordinates infomation
    frag_mol_ref = bf.frag_molecule(frag_ref,link_ref,elelist_ref,coords_ref,matrix_link_ref,fragchgspin,name='M1_ref')
    frag_mol_confs = []
    for i in range(num_conf):
        frag_mol_conf = bf.frag_molecule(frag_ref,link_ref,elelist_ref,coords_confs[i][:][:],matrix_link_ref,fragchgspin,name='M1_conf_'+str(i))
        frag_mol_confs.append(frag_mol_conf)
    print('*'*15+"  Get ref & conf fragments structure  finished!  "+'*'*15)
    print()
    return frag_mol_ref, frag_mol_confs
    

# fragementaion based on bond and angle specila case for coordination 
def bondcut(elelist_ref, coords_ref, coords_confs,  matrix_link_ref, chglist, spinlist, include=[], exclude=[]):
    num_conf = coords_confs.shape[0]
    
    #get internal coordinates (bond & angle) based on link matrix
    internal_list = bf.linkm2intercoord(matrix_link_ref)

    print('*'*15+"  Read include/exclude list  "+'*'*15)
    #get update the frag list (like exclud part of bond angle)
    if include != []:
        internal_list = bf.add_bond_angle(internal_list,include)
    if exclude != []:
        internal_list = bf.remove_bond_angle(internal_list,exclude)

    #save internal coordinates into file
    bf.save_bond_angle_list(internal_list)

    print('*'*15+"  Get internal coodinate values  "+'*'*15)
    #get internal coordinates values of ref and conf
    ref_internal_values = bf.get_intercoord_values(internal_list,coords_ref)
    confs_internal_values = []
    for i in range(num_conf):
        conf_internal_values = bf.get_intercoord_values(internal_list,coords_confs[i][:][:])
        confs_internal_values.append(conf_internal_values)
    
    #get frag and link atoms of ref
    bondcut_frag_ref, bondcut_link_ref = bf.strcuture2cluster_frag(matrix_link_ref, internal_list)

    #update special bonds 
    #bondcut_frag_ref, bondcut_link_ref = bf.update_bondcut_CH2_CH2(elelist_ref, bondcut_frag_ref, bondcut_link_ref,matrix_link_ref)

    print('*'*15+"  Charge and Spin  "+'*'*15)

    # check charge and multiplicity for each fragment
    fragchgspin = bf.frag_chg_spin(elelist_ref, bondcut_frag_ref, bondcut_link_ref, matrix_link_ref, chglist, spinlist)

    print('*'*15+"  Charge and Spin  finished!  "+'*'*15)
    print()

    print('*'*15+"  Get ref fragments structure  "+'*'*15)
    # get frag lines containing ele and coordinates infomation
    #bondcut_frag_xyz_ref = bf.write_frag_xyz(bondcut_frag_act,bondcut_link_act,elelist_ref,coords_ref,matrix_link_ref)
    bondcut_mol_ref = bf.frag_molecule_CH2_CH2(bondcut_frag_ref,bondcut_link_ref,elelist_ref,coords_ref,matrix_link_ref,fragchgspin,name='M2_ref')
    # get conf xyz similar to ref with only one bond/angle changed
    print('*'*15+"  Get conf fragments structure  "+'*'*15)
    bondcut_mol_confs = []
    for i in range(num_conf):
        bondcut_mol_conf = bf.get_frag_mol_conf(bondcut_mol_ref,internal_list,confs_internal_values[i],name='M2_conf_'+str(i))
        bondcut_mol_confs.append(bondcut_mol_conf)
    print('*'*15+"  Get ref & conf fragments structure  finished!  "+'*'*15)
    print()

    return bondcut_mol_ref, bondcut_mol_confs, internal_list, ref_internal_values, confs_internal_values

# fragementaion based on bond and angle and also fragments
def bondcut_fragmentation(elelist_ref, coords_ref, coords_confs,  matrix_link_ref, chglist, spinlist, fraglist, coordlist=[], include=[], exclude=[]):
    num_conf = coords_confs.shape[0]
    
    #get internal coordinates (bond & angle) based on link matrix
    internal_list = bf.linkm2intercoord(matrix_link_ref)

    print('*'*15+"  bond & angle part  "+'*'*15)
    print('*'*15+"  Read include/exclude list  "+'*'*15)
    #get update the frag list (like exclude part of bond angle and fraglist)
    if include != []:
        internal_list = bf.add_bond_angle(internal_list,include)
    if exclude != []:
        internal_list = bf.remove_bond_angle(internal_list,exclude)

    if coordlist != []:
        fraglist_clean, fraglist_act = bf.check_coord_fraglist(coordlist,fraglist)
        
        print('*'*15+"  update bond & angle list based on fraglist  "+'*'*15)
        internal_list_frag, internal_list_act_frag = bf.update_internal_frag(internal_list, fraglist_act, matrix_link_ref)
        
        print('*'*15+"  update bond & angle list based on coordination list  "+'*'*15)
        internal_list_coord, internal_list_act_coord = bf.update_internal_coordination(internal_list, coordlist, matrix_link_ref)

        #sum together
        internal_list = internal_list_frag + internal_list_coord
        internal_list_act = internal_list_act_frag + internal_list_act_coord
    else:
        fraglist_clean = fraglist
        print('*'*15+"  update bond & angle list based on fraglist  "+'*'*15)
        internal_list, internal_list_act = bf.update_internal_frag(internal_list,fraglist, matrix_link_ref)

    bf.save_bond_angle_list(internal_list)

    print('*'*15+"  Get internal coodinate values "+'*'*15)
    #get internal coordinates values of ref and conf
    ref_internal_values = bf.get_intercoord_values(internal_list,coords_ref)
    confs_internal_values = []
    for i in range(num_conf):
        conf_internal_values = bf.get_intercoord_values(internal_list,coords_confs[i][:][:])
        confs_internal_values.append(conf_internal_values)
    
    #get frag and link atoms of ref
    bondcut_frag_ref, bondcut_link_ref = bf.strcuture2cluster_frag(matrix_link_ref, internal_list_act)

    print('*'*15+"  Charge and Spin  "+'*'*15)
    
    # check charge and multiplicity for each fragment
    bondcut_fragchgspin = bf.frag_chg_spin(elelist_ref, bondcut_frag_ref, bondcut_link_ref, matrix_link_ref, chglist, spinlist)
    
    print('*'*15+"  Charge and Spin  finished!  "+'*'*15)
    print()
    print('*'*15+"  Get ref fragments structure  "+'*'*15)
    # get frag lines containing ele and coordinates infomation
    bondcut_mol_ref = bf.frag_molecule_CH2_CH2(bondcut_frag_ref,bondcut_link_ref,elelist_ref,coords_ref,matrix_link_ref,bondcut_fragchgspin,name='M3_ref')
    # get conf xyz similar to ref with only one bond/angle changed
    print('*'*15+"  Get conf fragments structure  "+'*'*15)
    bondcut_mol_confs = []
    for i in range(num_conf):
        bondcut_mol_conf = bf.get_frag_mol_conf(bondcut_mol_ref,internal_list,confs_internal_values[i],name='M3_conf_'+str(i))
        bondcut_mol_confs.append(bondcut_mol_conf)
    print('*'*15+"  Get ref & conf fragments structure  finished!  "+'*'*15)
    print()

    if len(fraglist_clean) > 0: 
        print('*'*15+"  fragmentation part "+'*'*15)
        #fragmentation part
        #get frag and link atoms 
        frag_ref, link_ref = bf.strcuture2cluster_frag(matrix_link_ref, fraglist_clean)


        print('*'*15+"  Charge and Spin  "+'*'*15)
        # check charge and multiplicity for each fragment
        fragchgspin = bf.frag_chg_spin(elelist_ref, frag_ref, link_ref, matrix_link_ref, chglist, spinlist)

        print('*'*15+"  Charge and Spin  finished!  "+'*'*15)
        print()

        print('*'*15+"  Get ref & conf fragments structure  "+'*'*15)
        # get frag lines containing ele and coordinates infomation
        frag_mol_ref = bf.frag_molecule(frag_ref,link_ref,elelist_ref,coords_ref,matrix_link_ref,fragchgspin,name='M3_frag_ref')
        frag_mol_confs = []
        for i in range(num_conf):
            frag_mol_conf = bf.frag_molecule(frag_ref,link_ref,elelist_ref,coords_confs[i][:][:],matrix_link_ref,fragchgspin,name='M3_frag_conf_'+str(i))
            frag_mol_confs.append(frag_mol_conf)
        print('*'*15+"  Get ref & conf fragments structure  finished!  "+'*'*15)
        print()
    else:
        frag_mol_ref = []
        frag_mol_confs = []
    return bondcut_mol_ref, bondcut_mol_confs, internal_list, ref_internal_values, confs_internal_values, fraglist_clean, frag_mol_ref, frag_mol_confs

