### ONIOM-based Strain Visualisation (OBSV)

#### Description
ONIOM-based Strain Visualisation 
Strain energy visualization of one/multiple conformers relative to the reference structure(eg: global minima). Subsystem extracted based on ONIOM methods(link atoms and scale factors). The subsystem can be defined using three methods:
* 1. atomic/fragments resolution based on fragmentations
* 2. bond and angle resolution based on internal coordinates (bond & angle)
* 3. combination of 1 & 2

#### Installation
`conda env create -f environment.yml`

`pip install OBSV-x.x.x-py3-none-any.whl` or `pip install OBSV==1.0.2`

##### requirements
OBSV: 
- python=3.9
- numpy
- pandas
- openbabel
- openpyxl

[Gaussian](https://gaussian.com/):
- Gaussian03/09/16

[xTB](https://xtb-python.readthedocs.io/en/latest/#):
- xtb-python

[ANI](https://aiqm.github.io/torchani/index.html):
- torchvision
- torch 
- torchani

[MLatom](http://mlatom.com/):
- matplotlib
- tensorboard
- torchvision
- torch 
- torchani
- MLatom (3.0.0))
- scipy
- pyh5md
- statsmodels

quantum chemical calculation packages:
Gaussian: Gaussian03,09,16
xTB: xTB-python
ANI: torchani
Mlatom: AIQM1

#### Usage
OBSV -inp input.inp 

OBSV -h
The -inp input.inp are recommended

##### example of inp file showed in example directory
calculator available: 
    ['g03', 'g09', 'g16','gfn1-xtb', 'gfn2-xtb','ani-1x', 'ani-2x', 'ani-1ccx', 'aiqm1']
inp file example:
    
    ref = ref.gjf
    conf = conf.gjf
    method = int
    cpu = int
    pal = int
    calculator = g16 
    scale = e/10.0 (optional)
    
    #fraglist (optional: only method = 1/3 required)
    1-2,4-6
    3

    #coordination (optional: only method = 3 available)
    3-5
    
    #include (optional: only method = 2/3 and extra bond/angles (no connection ) are needed)
    1 2
    1 2 3 

    #exclude (optional: only method = 2/3 and extra bond/angles are not need)
    4 7 
    4 7 9

    #charge (optional: only if atomic charge not zero required)
    5 1
    
    #spin (optional: only if atomic charge not zero required)
    3 1

##### preparations
**ref**: ref.gjf-reference stucture in Gaussian file, containing **method lines**, **cartesian coordinates** and **connectivity**
* the connectivity (bond order) values should be **1.0, 2.0, 3.0**! 
* **1.5 is forbidden**, it should be modified before computations!
    
**conf**: conf.gjf/.xyz conformer structure, and multiple structure in one xyz file is acceptable

**method**: 1 for framentation method, 2 for bond/angle method, 3 1+2

**cpu**: number of cpu for subsystem computation

**pal**: number of paralle subsystem computations (available for Gaussian, xTB)

**calculator**: calculator (Gaussian, xTB, ANI, AIQM1) for subsystem computation

**scale**: log scale factor for pymol visualization

**fraglist**: method =1/3, define the fragmentation list

**coordination**: method =3, define the coordination center (similar to fraglist)

**include**: method =2/3, additional bond/angle for non-connected atoms

**exclude**: method =2/3, exclude the bond/angle 

**charge**: define the atomic charge if not 0 

**spin**: define the atomic spin if not 0 (using integer: spin * 2)

#### Citation
