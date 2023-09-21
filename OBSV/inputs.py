import os
import sys
import numpy as np
import pandas as pd
import OBSV.basis_functions as bf
from OBSV import Results
import math
#import in_coor as ic


'''
This file define the funciton to read input coordinates files (Gaussian gjf ...), user-define files
'''
# read input parameters
def read_inp(inpf):
    #required: ref, conf, method
    #if method = 1 or 3, fraglist is required
    #
    calculators = ['g03', 'g09', 'g16','xtb','gfn1-xtb', 'gfn2-xtb','ani-1x', 'ani-2x', 'ani-1ccx', 'aiqm1']
    fr = open(inpf,"r")
    lines = fr.readlines()
    fr.close()
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
                        else:
                            print('Error: wrong format for bond/angle in '+linetmp)
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
                sys.exit(key+' was illegal!')
            i += j
    
    #check input parameter
    if 'ref' not in inp_dict.keys():
        sys.exit('ref file was not given!')
    else:
        print('ref file: '+inp_dict['ref'])
    
    if 'conf' not in inp_dict.keys():
        sys.exit('conf file was not given!')
    else:
        print('conf file: '+inp_dict['conf'])
        
    if 'scale' not in inp_dict.keys():
        Results.iflog = False
    else:
        Results.iflog = True
        if inp_dict['scale'] == 'e':
            Results.lognum = math.e
        else:
            Results.lognum = float(inp_dict['scale'])
        
    if 'calculator' not in inp_dict.keys():
        print('Warning: calculator was not given!')
        print('Using g16 for this calculation!')
        inp_dict['calculator'] = 'g16'
    else:
        if inp_dict['calculator'].lower() not in calculators:
            print(inp_dict['calculator']+ ' was not supported!')
            print('calculator available:')
            print(calculators)
            sys.exit()
    if 'method' not in inp_dict.keys():
        sys.exit('method was not given!')
    else:
        print('method: '+inp_dict['method'])
        if inp_dict['method'] == '1':
            print('fragmentation')
            if 'fraglist' not in inp_dict.keys():
                sys.exit('fraglist was not given!')
            else:
                print('%d fragments was given!'%len(inp_dict['fraglist']))
        elif inp_dict['method'] == '2':
            print('internal coordinates')
            if 'include' not in inp_dict.keys():
                inp_dict['include'] = []
                print('No extral bonds/angles added')
            else:
                print('%d bonds/angles added'%len(inp_dict['include']))
            if 'exclude' not in inp_dict.keys():
                inp_dict['exclude'] = []
                print('No bonds/angles removed')
            else:
                print('%d bonds/angles removed'%len(inp_dict['exclude']))
        elif inp_dict['method'] == '3':
            print('internal coordinates & fragmentation')
            if 'fraglist' not in inp_dict.keys():
                sys.exit('fraglist was not given!')
            else:
                print('%d fragments was given!'%len(inp_dict['fraglist']))
            if 'include' not in inp_dict.keys():
                inp_dict['include'] = []
                print('No extral bonds/angles added')
            else:
                print('%d bonds/angles added'%len(inp_dict['include']))
            if 'exclude' not in inp_dict.keys():
                inp_dict['exclude'] = []
                print('No bonds/angles removed')
            else:
                print('%d bonds/angles removed'%len(inp_dict['exclude']))
            
            if 'coordination' not in inp_dict.keys():
                inp_dict['coordination'] = []
                print('No coordination list')
            else:
                print('%d bonds/angles added'%len(inp_dict['include']))
        else:
            sys.exit(inp_dict['method']+' was illegal!')

    inp_dict['method'] = int(inp_dict['method'])

    if 'charge' not in inp_dict.keys():
        inp_dict['charge'] = []
        print('All atomic charge are 0!')
    else:
        print('%d atomic charge are defined!'%len(inp_dict['charge']))
    
    if 'spin' not in inp_dict.keys():
        inp_dict['spin'] = []
        print('All atomic spin are 0!')
    else:
        print('%d atomic spin are defined!'%len(inp_dict['spin']))

    if 'cpu' not in inp_dict.keys():
        inp_dict['cpu'] = 1
        print('number cpu set to 1')
    else:
        print('number cpu set to '+inp_dict['cpu'])
        inp_dict['cpu'] = int(inp_dict['cpu'])
    
    if 'pal' not in inp_dict.keys():
        inp_dict['pal'] = 1
        print('number pal set to 1')
    else:
        print('number pal set to '+inp_dict['pal'])
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
        sys.exit(reftype+' input is not supported for ref input!')

    if conftype == '.gjf' or conftype == '.com':
        mlines_conf, elelist_conf, coords_conf, matrix_link_conf, addlines_conf= readgjf(conf)
        dimension = coords_conf.shape
        coords_confs = np.zeros((1, dimension[0], dimension[1]),dtype=float)
        coords_confs[0][:][:] = coords_conf
    elif conftype == '.xyz':
        elelist_conf, coords_confs = readxyz(conf)
    else:
        sys.exit(reftype+' input is not supported for ref input!')

    if elelist_conf != elelist_ref:
        sys.exit('ref and conf have different atom types!')
        
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
            sys.exit('Error in the line %d of file %s'%(i+1, filename))

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
        print('Warning: '+filename+' No connectivity information!')   

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
        #print(vartmp[0])
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
            else:
                print('Error: wrong format for bond/angle in '+linestr)
    return extra_list

