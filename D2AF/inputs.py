import os
import sys
import numpy as np
import pandas as pd
import D2AF.basis_functions as bf
from D2AF import Results
import math
import logging 

logger = logging.getLogger('main.inputs')


'''
This file define the funciton to read input coordinates files (Gaussian gjf ...), user-define files
'''
# read input parameters
def read_inp(inpf):
    #required: ref, conf, method
    #if method = 1 or 3, fraglist is required
    #
    calculators = ['g03', 'g09', 'g16','xtb','gfn1-xtb', 'gfn2-xtb','ani-1x', 'ani-2x', 'ani-1ccx', 'aiqm1', 'orca', 'nocalc']
    fr = open(inpf,"r")
    lines = fr.readlines()
    fr.close()
    logger.critical('*************** Input Parameters:***************\n')
    #read inp parameters
    inp_dict = {}
    i = 0
    while i < len(lines):
        line = lines[i]
        if line.strip() == "":
            i += 1
            continue
        elif '=' in line:
            key, value = line.split('=')
            inp_dict[key.strip().lower()] = value.strip()
            i += 1
        elif line.strip()[0] == "#": #key info begins
            key = line[1:].strip().lower()
            value = []
            j=1
            if key == 'fraglist':
                while j < len(lines):
                    if i+j > len(lines)-1:
                        break
                    linetmp = lines[i+j]
                    if linetmp.strip() == "":
                        break
                    else:
                        value.append(bf.str2list(linetmp.strip()))
                    j += 1
                inp_dict[key] = value
            elif key == 'coordination':
                while j < len(lines):
                    if i+j > len(lines)-1:
                        break
                    linetmp = lines[i+j]
                    if linetmp.strip() == "":
                        break
                    else:
                        value.append(bf.str2list(linetmp.strip()))
                    j += 1
                inp_dict[key] = value
            elif key == 'include' or key == 'exclude': #exclude, include
                while j < len(lines):
                    if i+j > len(lines)-1:
                        break
                    linetmp = lines[i+j]
                    if linetmp.strip() == "":
                        break
                    else:
                        varstmp = linetmp.strip().split()
                        if len(varstmp) == 2: #bond
                            a1 = min(int(varstmp[0]),int(varstmp[1]))
                            a2 = max(int(varstmp[0]),int(varstmp[1]))
                            value.append([a1-1,a2-1])
                        elif len(varstmp) == 3: #angle
                            a1 = min(int(varstmp[0]),int(varstmp[2]))
                            a2 = max(int(varstmp[0]),int(varstmp[2]))
                            value.append([a1-1,int(varstmp[1])-1,a2-1])
                        elif len(varstmp) == 4: #torsion
                            a1 = min(int(varstmp[0]),int(varstmp[3]))
                            a2 = max(int(varstmp[0]),int(varstmp[3]))

                            if a1 == int(varstmp[0]):
                                value.append([a1-1,int(varstmp[1])-1,int(varstmp[2])-1,a2-1])
                            else:
                                value.append([a1-1,int(varstmp[2])-1,int(varstmp[1])-1,a2-1])
                        else:
                            logger.error('Error: wrong format for bond/angle/torsion in '+linetmp +' \n')
                    j += 1
                inp_dict[key] = value
            elif key == 'charge' or key == 'spin': # charge, spin
                while j < len(lines):
                    if i+j > len(lines)-1:
                        break
                    linetmp = lines[i+j]
                    if linetmp.strip() == "":
                        break
                    else:
                        value.append(linetmp.strip())
                    j += 1
                inp_dict[key] = value
            else:
                logger.error('Error: '+key+' was illegal!')
                sys.exit()
            i += j
    
    #check input parameter
    if 'ref' not in inp_dict.keys():
        logger.error('Error: reference file was not given!')
        sys.exit()
    else:
        logger.critical('Input reference file: '+inp_dict['ref'])
    
    if 'conf' not in inp_dict.keys():
        logger.error('Error: conformer file was not given!')
        sys.exit()
    else:
        logger.critical('Input Conformer file: '+inp_dict['conf'] +' \n')
        
    if 'scale' not in inp_dict.keys():
        Results.iflog = False
        logger.critical('Using Normal scale for visualization')
    else:
        Results.iflog = True
        if inp_dict['scale'] == 'e':
            Results.lognum = math.e
        else:
            Results.lognum = float(inp_dict['scale'])
        logger.critical('Using log (%s) scale for visualization'%inp_dict['scale'])

    if 'Dihedral' not in inp_dict.keys():
        bf.dihedral_value = 30
        logger.critical('Dihedral threshold set to 30')
    else:
        logger.critical('Dihedral threshold set to '+inp_dict['Dihedral'])
        bf.dihedral_value = int(inp_dict['Dihedral'])

    if 'CRscale' not in inp_dict.keys():
        bf.CR_scale = 1.0
        logger.critical('COVALENT_RADII scale set to 1.0' +' \n')
    else:
        logger.critical('COVALENT_RADII scale set to '+inp_dict['CRscale']+' \n')
        bf.CR_scale = float(inp_dict['CRscale'] +' \n')
            
    if 'calculator' not in inp_dict.keys():
        logger.warning('Warning: calculator was not given!')
        logger.warning('Using g16 for this calculation!' +' \n')
        inp_dict['calculator'] = 'g16'
    else:
        if inp_dict['calculator'].lower() not in calculators:
            logger.error(inp_dict['calculator']+ ' was not supported!')
            logger.error('calculator available:')
            logger.error(calculators +' \n')
            sys.exit()
        else:
            logger.critical('Calculator: '+inp_dict['calculator']+' \n')

    if 'method' not in inp_dict.keys():
        logger.error('Error: method was not given!')
        sys.exit()
    else:
        logger.critical('method: '+inp_dict['method'])
        if inp_dict['method'] == '1':
            logger.critical('M1 (fragmentation) was used!')
            if 'fraglist' not in inp_dict.keys():
                logger.error('Error: fraglist was not given!')
                sys.exit()
            else:
                logger.critical('%d fragments was given:'%len(inp_dict['fraglist']))
                logger.info(inp_dict['fraglist'])
        elif inp_dict['method'] == '2':
            logger.critical('M2 (fragmentation) was used!')
            if 'include' not in inp_dict.keys():
                inp_dict['include'] = []
                logger.info('No extral internal coordinate(s) added')
            else:
                logger.info('%d internal coordinate(s) added:'%len(inp_dict['include']))
                logger.info(inp_dict['include'])
            if 'exclude' not in inp_dict.keys():
                inp_dict['exclude'] = []
                logger.info('No internal coordinate(s) removed')
            else:
                logger.info('%d internal coordinate(s) removed:'%len(inp_dict['exclude']))
                logger.info(inp_dict['exclude'])
        elif inp_dict['method'] == '3':
            logger.critical('M3 (fragmentation) was used!')
            
            if 'fraglist' in inp_dict.keys() and 'coordination' in inp_dict.keys():
                logger.info('%d fragments was given:'%len(inp_dict['fraglist']))
                logger.info(inp_dict['fraglist'])
                logger.info('')
                logger.info('%d coordination was given:'%len(inp_dict['coordination']))
                logger.info(inp_dict['coordination'])
                
            elif 'fraglist' in inp_dict.keys() and 'coordination' not in inp_dict.keys():   
                inp_dict['coordination'] = []
                logger.info('%d fragments was given:'%len(inp_dict['fraglist']))
                logger.info(inp_dict['fraglist'])
                logger.info('')
                logger.info('No coordination list')
            elif 'fraglist' not in inp_dict.keys() and 'coordination' in inp_dict.keys():
                logger.info('%d coordination was given:'%len(inp_dict['coordination']))
                logger.info(inp_dict['coordination'])
                inp_dict['fraglist'] = inp_dict['coordination']
            else:
                logger.error('Error:fraglist/coordination was not given!')
                logger.error('Means you want to use M2?')
                sys.exit()
            
            #if 'coordination' not in inp_dict.keys():
            #    inp_dict['coordination'] = []
            #    logger.info('No coordination list')
            #else:
            #    logger.info('%d coordination was given:'%len(inp_dict['coordination']))
            #    logger.info(inp_dict['coordination'])
                
            if 'include' not in inp_dict.keys():
                inp_dict['include'] = []
                logger.info('No extral internal coordinate(s) added')
            else:
                logger.info('%d internal coordinate(s) added:'%len(inp_dict['include']))
                logger.info(inp_dict['include'])
            if 'exclude' not in inp_dict.keys():
                inp_dict['exclude'] = []
                logger.info('No internal coordinate(s) removed')
            else:
                logger.info('%d internal coordinate(s) removed:'%len(inp_dict['exclude']))
                logger.info(inp_dict['exclude'])
            
            
        else:
            logger.error('Error: '+inp_dict['method']+' was illegal!')
            sys.exit()

    inp_dict['method'] = int(inp_dict['method'])
    logger.info('')
    if 'charge' not in inp_dict.keys():
        inp_dict['charge'] = []
        logger.info('All atomic charge are 0!')
    else:
        logger.info('%d atomic charge are defined:'%len(inp_dict['charge']))
        logger.info(inp_dict['charge'])
    
    if 'spin' not in inp_dict.keys():
        inp_dict['spin'] = []
        logger.info('All atomic spin are 0!')
    else:
        logger.info('%d atomic spin are defined:'%len(inp_dict['spin']))
        logger.info(inp_dict['spin'])
    logger.info('')
    if 'cpu' not in inp_dict.keys():
        inp_dict['cpu'] = 1
        logger.info('Each sub-system computation will use 1 cpu')
    else:
        logger.info('Each sub-system computation will use '+inp_dict['cpu']+' cpus')
        inp_dict['cpu'] = int(inp_dict['cpu'])
        
    
    
    if 'pal' not in inp_dict.keys():
        inp_dict['pal'] = 1
        logger.info('Parrallel computation is not used\n')
    else:
        logger.info(inp_dict['pal']+' subsystem calculations in parallel\n')
        inp_dict['pal'] = int(inp_dict['pal'])

    return inp_dict

# read ref and conf input file
def read_ref_conf(ref, conf):
    reftype = os.path.splitext(ref)[1]
    conftype = os.path.splitext(conf)[1]
    addpara = {}
    if reftype == '.gjf' or reftype == '.com':
        mlines_ref, elelist_ref, coords_ref, matrix_link_ref, addlines_ref= readgjf(ref)
        addpara['mlines'] = mlines_ref
        addpara['addlines'] = addlines_ref
    else:
        logger.error(reftype+' input is not supported for ref input!')
        sys.exit()

    if conftype == '.gjf' or conftype == '.com':
        mlines_conf, elelist_conf, coords_conf, matrix_link_conf, addlines_conf= readgjf(conf)
        dimension = coords_conf.shape
        coords_confs = np.zeros((1, dimension[0], dimension[1]),dtype=float)
        coords_confs[0][:][:] = coords_conf
    elif conftype == '.xyz':
        elelist_conf, coords_confs = readxyz(conf)
    else:
        logger.error(reftype+' input is not supported for ref input!')
        sys.exit()

    if elelist_conf != elelist_ref:
        logger.error('ref and conf have different atom types!')
        sys.exit()

    num_atom = len(elelist_ref)
    num_conf = coords_confs.shape[0]

    logger.critical(' %d atoms in input structure !'%num_atom)

    #logger coordinates
    logger.info('')
    logger.info('### Coordinates of reference structure ###')
    for i in range(num_atom):
        logger.info('%2s %14.6f %14.6f %14.6f'%(elelist_ref[i], coords_ref[i][0], coords_ref[i][1], coords_ref[i][2]))
    logger.info('')

    logger.critical(' %d structure in conformer input!'%num_conf)
    if num_conf == 1:
        logger.info('')
        logger.info('### Coordinates of conformer structure ###')
        for i in range(num_atom):
            logger.info('%2s %14.6f %14.6f %14.6f'%(elelist_ref[i], coords_confs[0][i][0], coords_confs[0][i][1], coords_confs[0][i][2]))
        logger.info('')
    else:
        logger.info('Multiple structures in conformer input!')
        
    return elelist_ref, coords_ref, coords_confs, matrix_link_ref, addpara

#read multiple structure from xyz file 
def readxyz(filename):
    fr = open(filename,"r")
    lines = fr.readlines()
    fr.close()

    natom = int(lines[0])
    
    #number of molecule
    nummol = 0
    i = 0
    while i < len(lines):
        if lines[i].strip() == '':
            break 
        elif int(lines[i].strip()) == natom:
            nummol += 1
            i += natom+2

        else:
            logger.error('Error in the line %d of file %s'%(i+1, filename))
            sys.exit()

    coords = np.zeros((nummol,natom,3),dtype=float)
    
    elelist = []
    for j in range(nummol):
        elelisttmp = []
        atomlines = lines[j*(natom+2)+2:(j+1)*(natom+2)]
        for i in range(natom):
            ele, x, y, z = atomlines[i].split()
            elelisttmp.append(ele)
            coords[j][i][0] = float(x)
            coords[j][i][1] = float(y)
            coords[j][i][2] = float(z)
    elelist = elelisttmp
    return elelist, coords

#read gjf 
def readgjf(filename):
    fr = open(filename,"r")
    lines = fr.readlines()
    fr.close()
    ml, sl, ifconn, ifgen = gjfkeylines(lines)
    #method lines
    mlines = lines[ml:sl[0]]
    #atoms lines
    atomlines = lines[sl[1]+2:sl[2]]

    elelist, coords = getcoords(atomlines)
    if ifconn:
        #generate connectivity matrix from connectivity block
        if len(sl) == 3:
            connlines = lines[sl[2]+1:]
        else:
            connlines = lines[sl[2]+1:sl[3]]
        matrix_link = linkmatrix(connlines)
    else:
        matrix_link = np.zeros((len(lines),len(lines)), dtype=float)
        logger.warning('Warning: '+filename+' No connectivity information!\n')   

    #gen basis set
    addlines = []
    if ifgen:
        addlines = lines[sl[3]+1:]

    return mlines, elelist, coords, matrix_link, addlines

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

#get coords from atom block
def getcoords(lines):
    natoms=len(lines)
    coords=np.zeros((natoms,3),dtype=float)
    elelist=[]
    # ele x y z
    for i, linestr in enumerate(lines):
        if linestr == '\n':
            return elelist, coords
        vartmp=linestr.split()

        elelist.append(vartmp[0])
        coords[i][0]=float(vartmp[1])
        coords[i][1]=float(vartmp[2])
        coords[i][2]=float(vartmp[3])
    return elelist, coords
                           
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

#get fraglist based on a fragmentation list file
def read_fraglist(fragf):
    fragr = open(fragf,"r")
    fraglines = fragr.readlines()
    fragr.close()
    fraglist = []
    for fragline in fraglines:
        if fragline.strip() != '':
            fraglist.append(bf.str2list(fragline))
    return fraglist 

# read atomic charge and spin list
def getatomic_chg_spin(numatom, chgf=[], spinf=[]):
    chglist = [0] * numatom
    if len(chgf) != 0:
        for linestr in chgf:
            if linestr.strip() != '':
                varstmp = linestr.strip().split()
                chglist[int(varstmp[0])-1] = int(varstmp[1])
    
    spinlist = [0] * numatom
    if len(spinf) != 0 :
        for linestr in spinf:
            if linestr.strip() != '':
                varstmp = linestr.strip().split()
                spinlist[int(varstmp[0])-1] = int(varstmp[1])
    return chglist, spinlist

# read bond/angle from extra file (include/exclude)   
def read_bond_angle(extraf):
    extra_list = []
    fr = open(extraf,"r")
    lines = fr.readlines()
    fr.close()
    for linestr in extraf:
        if linestr.strip() != '':
            varstmp = linestr.strip().split()
            if len(varstmp) == 2: #bond
                a1 = min(int(varstmp[0]),int(varstmp[1]))
                a2 = max(int(varstmp[0]),int(varstmp[1]))
                extra_list.append([a1-1,a2-1])
            elif len(varstmp) == 3: #angle
                a1 = min(int(varstmp[0]),int(varstmp[2]))
                a2 = max(int(varstmp[0]),int(varstmp[2]))
                extra_list.append([a1-1,int(varstmp[1])-1,a2-1])
            elif len(varstmp) == 4: #torsion
                a1 = min(int(varstmp[0]),int(varstmp[3]))
                a2 = max(int(varstmp[0]),int(varstmp[3]))
                extra_list.append([a1-1,int(varstmp[1])-1,int(varstmp[2])-1,a2-1])
            else:
                logger.error('Error: wrong format for bond/angle/torsion in '+linestr)
    return extra_list


def check_dihedral():
    if len(sys.argv) == 3:
        elelist_ref, coords_ref, coords_confs, matrix_link_ref, addpara = read_ref_conf(sys.argv[1],sys.argv[2])
        bf.check_difference_dihedral(elelist_ref, coords_ref, coords_confs)
    elif len(sys.argv) == 4:
        elelist_ref, coords_ref, coords_confs, matrix_link_ref, addpara = read_ref_conf(sys.argv[1],sys.argv[2])
        bf.check_difference_dihedral(elelist_ref, coords_ref, coords_confs, float(sys.argv[3]))
    else:
        print('Input: ref conf thershold(optional)')
        print('ref: in Gaussian gjf format')
        print('conf: gjf or xyz(for multiple conformers)')
        print('thershold: default 30, only > 30 difference will show')
    

