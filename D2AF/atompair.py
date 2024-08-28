import numpy as np
import math
import sys

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
    for linestr in lines[mline:spacelist[0]]:
        if 'geom=connectivity' in linestr:
            ifconn=True
    return mline, spacelist, ifconn

#get link matrix from connectivity block
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

#get coords from atom block
def getcoords(lines):
    natoms=len(lines)
    coords=np.zeros((natoms,3),dtype=float)
    elelist=[]
    # ele x y z
    for i, linestr in enumerate(lines):
        vartmp=linestr.split()
        elelist.append(vartmp[0])
        coords[i][0]=float(vartmp[1])
        coords[i][1]=float(vartmp[2])
        coords[i][2]=float(vartmp[3])
    return elelist, coords
def eles2nums(eles):
    eleslist = ['H','He',
        'Li','Be','B','C','N','O','F','Ne',
        'Na','Mg','Al','Si','P','S','Cl','Ar',
        'K','Ca','Sc','Ti','V','Cr','Mn','Fe','Co','Ni','Cu','Zn','Ga','Ge','As','Se','Br','Kr',
'Rb','Sr','Y','Zr','Nb','Mo','Tc','Ru','Rh','Pd','Ag','Cd','In','Sn','Sb','Te','I','Xe',
'Cs','Ba',
'La','Ce','Pr','Nd','Pm','Sm','Eu','Gd','Tb','Dy','Ho','Er','Tm','Yb','Lu',
'Hf','Ta','W','Re','Os','Ir','Pt','Au','Hg','Tl','Pb','Bi','Po','At','Rn']
    elenums = []
    for ele in eles:
        elenums.append(eleslist.index(ele)+1)
    return elenums

def get_ele_linkmat(gjf):
    
    fr = open(gjf,"r")
    lines = fr.readlines()
    fr.close()
    ml, sl, ifconn = gjfkeylines(lines)

    #atoms lines
    atomlines = lines[sl[1]+2:sl[2]]
    natoms = len(atomlines)
    eles, coords = getcoords(atomlines)
    elenums = eles2nums(eles)

    matrix_link1 = np.zeros((natoms,natoms),dtype=float)

    if ifconn:
        #generate connectivity matrix from connectivity block
        if len(sl) == 3:
            connlines = lines[sl[2]+1:]
        else:
            connlines = lines[sl[2]+1:sl[3]]
        matrix_link1 = linkmatrix(connlines)
    else:
        sys.exit('No connectivity information!')
    return elenums, matrix_link1

def get_connect_values(elenum, mat):
    numatom = len(elenum)

    connect = np.zeros(numatom, dtype=int)
    connect0 = np.zeros(numatom, dtype=int)
    connect1 = np.zeros(numatom, dtype=int)
    connect2 = np.zeros(numatom, dtype=int)
    connect3 = np.zeros(numatom, dtype=int)
    connect4 = np.zeros(numatom, dtype=int)
    for i in range(numatom):
        connect0[i] = elenum[i] *10**9
        array_itmp = mat[:,i]
        arraytmp = list(np.nonzero(array_itmp))
        for j in arraytmp[0]:
            connect1[i] = connect1[i] + mat[i][j]*elenum[j] * 10**7
    for i in range(numatom):
        array_itmp = mat[:,i]
        arraytmp = list(np.nonzero(array_itmp))
        for j in arraytmp[0]:
            connect2[i] = connect2[i] + connect1[j] * 10**-2
    for i in range(numatom):
        array_itmp = mat[:,i]
        arraytmp = list(np.nonzero(array_itmp))
        for j in arraytmp[0]:
            connect3[i] = connect3[i] + connect2[j] * 10**-2
    for i in range(numatom):
        array_itmp = mat[:,i]
        arraytmp = list(np.nonzero(array_itmp))
        for j in arraytmp[0]:
            connect4[i] = connect4[i] + connect3[j] * 10**-2
    for i in range(numatom):
        connect[i] = connect0[i] + connect1[i] + connect2[i] + connect3[i] + connect4[i]
    return connect
  

def atompaire(gjf1, gjf2):
    elenum1, mat1 = get_ele_linkmat(gjf1)
    connect1 = get_connect_values(elenum1, mat1)
    elenum2, mat2 = get_ele_linkmat(gjf2)
    connect2 = get_connect_values(elenum2, mat2)
    pair = np.zeros(len(elenum1), dtype=int)

    for value in set(connect1):
        pos1 = np.where(connect1 == value)
        pos2 = np.where(connect2 == value)
        indexarray1 = pos1[0]
        indexarray2 = pos2[0]
        if indexarray1.size == indexarray2.size:
            for i in range(indexarray1.size):
                pair[indexarray1[i]] = indexarray2[i]
            if indexarray1.size >1:
                print('Warning atoms can not be clarified:'+str(indexarray2))
        else:
            sys.exit('Connections of'+str(indexarray2)+'and'+str(indexarray1)+'are different!')
    
    fr1 = open(gjf1,"r")
    lines1 = fr1.readlines()
    fr1.close()
    ml1, sl1, ifconn1 = gjfkeylines(lines1)

    fr = open(gjf2,"r")
    lines = fr.readlines()
    fr.close()
    ml, sl, ifconn = gjfkeylines(lines)
    coorlines = lines[sl[1]+2:sl[2]]
    fa = open(gjf2.split('.')[0]+'_new.gjf','w')
    fa.writelines(lines[:sl[1]+2])
    for index in pair:
        fa.write(coorlines[index])
    fa.writelines(lines1[sl1[2]:sl1[-1]])
    fa.close()
    
    
def run():
    if len(sys.argv) == 3:
    #atompaire('test1.gjf','test2.gjf')
        atompaire(sys.argv[1],sys.argv[2])
    else:
        print('Input: gjf1 gjf2 with same connection but different order!')
