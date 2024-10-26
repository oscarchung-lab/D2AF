### Distortion Distribution Analysis enabled by Fragmentation (D2AF)
<div align=center><img src=Docs/toc.png  width="400" /></div>

#### Description
Distortion Distribution Analysis enabled by Fragmentation (D2AF) is an efficient, general and flexible fragmentation-based approach for local distortion distribution analysis on various chemical and biological-related molecules. D2AF bases on fragmentation and ONIOM-type boundary strategies to evaluate/estimate (relative) local distortion energies of one (or multiple) structures/conformers (**Tar**) relative to the reference structure (**Ref**; less distortion) at the given computational chemistry level (the user adopts). **Any type of structures (stationary point structures: e.g., local minimum, transition state(s); non-stationary point structures: e.g., MD- or IRC-derived structures) can be adopted and compared in D2AF.**  (Relative) Local distortion energies of all subsystems/fragments for the **Tar** structure(s) relative to the **Ref** structure can be used for visualization (so-called distortion map or distortion distribution). 

Fragmentation of subsystems can be defined using three approachs:
* 1. Atomic/fragment resolution (**M1**)
* 2. Individual bond and angle resolution based on internal coordinates (bond, angle, optionlly dihedral) (**M2**)
* 3. Combination of **M1 & M2**  (**M3**)

##### Workflow
<div align=center><img src=Docs/Fig1.png  width="640" /></div>

<div align=center><big><b>Workflow</b></big></div>
<!--
<div align=center><img src=Docs/SchemeS1.png  width="640" /></div>
<div align=center><big><b>Technique details</b></big></div>
-->

#### Installation
**conda env**

    conda env create -f environment.yml


**using pypi**
        
    pip install D2AF  
or

    pip install D2AF-x.x.x-py3-none-any.whl
     
##### requirements
D2AF: 
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
- MLatom (3.0.0)
- scipy
- pyh5md
- statsmodels

quantum chemical calculation packages:
Gaussian: Gaussian03,09,16
xTB: xTB-python
ANI: torchani
Mlatom: AIQM1

#### Usage
D2AF -inp input.inp 

D2AF -h
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

**method**: 1 for framentation method (M1), 2 for bond/angle method (M2), 3 for 1+2 method (M3)

**cpu**: number of cpu for subsystem computation

**pal**: number of paralle subsystem computations (available for Gaussian, xTB)

**calculator**: calculator (Gaussian, xTB, ANI, AIQM1) for subsystem computation

**scale**: log scale factor for pymol visualization

**fraglist**: **M1/M3**, define the fragmentation list

**coordination**: **M3**, define the coordination center (similar to fraglist)

**include**: **M2/M3**, additional bond/angle for non-connected atoms

**exclude**: **M2/M3**, exclude the bond/angle 

**charge**: define the atomic charge if not 0 

**spin**: define the atomic spin if not 0 (using integer: spin * 2)


##### Including in D2AF tools:  

**autofragment.py**  `autofragment` 
auto fragmentation!
input: xyz file/ or Gaussian gjf file with/without connectivity
ouput: gjf file with connectivity， fraglist for M1, pymol script for visualization

**atompair.py**  `atompair` 
pair atom between two gjfs with same connectivity info but  different label order 
input: gjf1 gjf2 Gaussian files with connectivity
ouput: new gjf2 with same atom label to gjf1

the symmetric atoms can not be separated (warning information)

**pml_str.py**  `pml_str`
add addtional command to the pml files such as `bond id x, id x` and `unbond id x, id x` (using `;` to separate lines) in a `""` **not** `''`

**write_run_pml.py**  `write_run_pml`
write Pymol run pml to generate strain png files for multi-conformer case (IRC/MD).   
inputs: `method number` eg.: `M2 125`


**multi_mov.py**  `multi_mov`
after Run Pymol pml to generate strain png files for multi-conformer case (IRC/MD). Generate electronic energy (MEP) and strain energy figure for each conformer, then combine them with stran visualization png to generate a movie    
inputs: `energy_xlsx type(IRC/MD)` where xlsx file including ` pos, Energy, Strain M1/M2/M3 columns`

**Combine_multi_conf.py**  `Combine_multi`
Similar to Combine_fig_MS.py, but for multiple conformers.
inputs: `conf_id1 conf_id2 ... conf_idn` combine selected confs


**Combine_fig_MS.py/Combine_fig_ppt.py**  `Combine_fig_MS/Combine_fig_ppt`
combine multiple pngs (M1, M2, M3) into one png for publication (label a/b/c/d) or ppt (file names)  

#### Citation
Efficient and Flexible Approach for Local Distortion: Distortion Distribution Analysis enabled by Fragmentation. Z. Yan, Y. S. Liao, X. Li, and L. W. Chung, 2024. (submitted)
