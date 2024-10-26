### Distortion Distribution Analysis enabled by Fragmentation (D2AF)
<div align=center><img src=Docs/toc.png  width="400" /></div>

#### Description
D2AF is an efficient, general and flexible fragmentation-based approach for local distortion analysis on various chemical and biological-related molecules. D2AF bases on fragmentation and ONIOM-type boundary strategies to evaluate/estimate (relative) local distortion energies of one (or multiple) structure(s)/conformer(s) (**Tar**; more distortion) relative to the reference structure (**Ref**; less distortion) at the given computational chemistry level (the user adopts). 

**Any type of structures (stationary-point structures: e.g., local minimum, transition state(s); non-stationary-point structures: e.g., MD- or IRC-derived structures) can be adopted and compared in D2AF.**  (Relative) Local distortion energies of all subsystems/fragments for the **Tar** structure(s) relative to the **Ref** structure can be used for visualization (so-called distortion map or distortion distribution). 


Fragmentation of subsystems can be defined using three approachs:
* 1. Atomic/fragment resolution (**M1**)
* 2. Individual bond and angle resolution based on internal coordinates (bond, angle, optionlly dihedral) (**M2**)
* 3. Combination of **M1 & M2**  (**M3**), esp. complex systems containing aromatic and/or metal-coordination 

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
     
##### Requirements
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

[ORCA](https://orcaforum.kofo.mpg.de/):
- ORCA 5 (users need to submit our generated ORCA inputs by themselve)

Quantum chemical calculation packages:
Gaussian: Gaussian03,09,16
xTB: xTB-python
ANI: torchani
Mlatom: AIQM1

#### Usage
(Optional: to generate suggestive fragmentation list for **M1 or M3**)
autofragment.py coord
where coord is any xyz file or Gaussian gjf file with/without connectivity. It will generate a new gjf file with connectivity, fraglist for **M1** as well as a new D2AF template input file@ (users can modify). No need for **M2**

(To run all proccess: fragmentation, calculations via our calls, and analysis)
D2AF -inp input.inp 

(To run fragmentation only; run/call quantum chemistry calculations by users)
D2AF -inp input.inp -nocalc

(To list commands)
D2AF -h

The -inp input.inp are recommended @

##### example of the D2AF input file showed in our example directories
calculator available: 
    ['g03', 'g09', 'g16','gfn1-xtb', 'gfn2-xtb','ani-1x', 'ani-2x', 'ani-1ccx', 'aiqm1']

inp file example:
    
    ref = ref.gjf
    conf = conf.gjf
    method = int
    cpu = int
    pal = int
    calculator = g16 
    scale = e/10.0 (optional for color visualization)
    
    #fraglist (optional: only method = 1/3 required)
    1-2,4-6
    3

    #coordination (optional: only method = 3 available)
    3-5
    
    #include (optional: only method = 2/3; add extra bonds/angles/diherals (no connection@) users want)
    1 2
    1 2 3 

    #exclude (optional: only method = 2/3; delete extra bonds/angles users do not want)
    4 7 
    4 7 9

    #charge (optional: only if atomic charge of the whole system is not zero required)
    5 1
    
    #spin (optional: only if spin charge  of the whole system not zero required)
    3 1

##### preparations
**ref**: ref.gjf, a reference structure (**Ref** form) in Gaussian file, containing **method lines**, **cartesian coordinates** and **connectivity**
* the connectivity (bond order) values should be **1.0, 2.0, 3.0** only! 
* **1.5 is forbidden**, it should be modified before running D2AF!
    
**conf**: conf.gjf/.xyz, a target structure (gjf or xyz), or multiple target structures in one xyz file (**Tar** form)

**method**: 1 for atomic/framentation-based (**M1**), 2 for bond/angle/diheral based (**M2**; users need to give the diheral list in #include), 3 for 1+2 method (**M3**)

**cpu**: number of cpu for subsystem computation

**pal**: number of paralle subsystem computations (available for Gaussian, xTB)

**calculator**: calculator (Gaussian, xTB, ANI, AIQM1) for subsystem computation

**scale**: log/e scale factor for pymol visualization@

**fraglist**: **M1/M3**, define the fragmentation list

**coordination**: **M3**, define the metal coordination center/region@ (similar to fraglist)

**include**: **M2/M3**, additional bond/angle/diheral for non-connected atoms

**exclude**: **M2/M3**, exclude the bond/angle 

**charge**: define the atomic charge if not 0 

**spin**: define the atomic spin if not 0 (using integer: spin * 2)



##### Additional D2AF tools:  

**autofragment.py**  `autofragment` 
Auto fragmentation!

input: xyz file/ or Gaussian gjf file with/without connectivity

ouput: gjf file with connectivity， fraglist for M1, pymol script for visualization


**atompair.py**  `atompair` 
Pairing atom order between two gjfs with the same connectivity info but different label order 

input: gjf1 gjf2 Gaussian files with connectivity

ouput: new gjf2 with same atom label to gjf1

the symmetric atoms cannot be separated (warning information)


**pml_str.py**  `pml_str`

Add addtional commands to Pymol script (pml) files such as `bond id x, id x` and `unbond id x, id x` (using `;` to separate lines) in a `""` **not** `''`


**write_run_pml.py**  `write_run_pml`

Write Pymol pml *Run Script* to generate distortion map (png) files for multi-structures case (e.g., IRC/MD).   

inputs: `method number` eg.: `M2 125`


**multi_mov.py**  `multi_mov`

After Run Pymol pml to generate distortion map (png) files for multi-structure case (e.g., IRC/MD). Generate electronic energy (MEP) and distortion energy distortion figure for each conformer, then combine them with the distortion map visualization (png) to generate a movie    

inputs: `energy_xlsx type(IRC/MD)` where xlsx file including ` pos, Energy, Strain M1/M2/M3 columns`


**Combine_multi_conf.py**  `Combine_multi`

Similar to Combine_fig_MS.py, but for multiple structures/conformers.

inputs: `conf_id1 conf_id2 ... conf_idn` combine selected confs


**Combine_fig_MS.py/Combine_fig_ppt.py**  `Combine_fig_MS/Combine_fig_ppt`

Combine multiple distortion maps/pngs (M1, M2, M3) into one png for publication (label a/b/c/d) or ppt (file names)  


#### Citation
Efficient and Flexible Approach for Local Distortion: Distortion Distribution Analysis enabled by Fragmentation. Z. Yan, Y. S. Liao, X. Li, and L. W. Chung, **2024** *(submitted)*.

The ONIOM Method and its Applications. Chung, L. W.; Sameera, W. M. C.; Ramozzi, R.; Page, A. J.; Hatanaka, M.; Petrova, G. P.; Harris, T. V.; Li, X.; Ke, Z.; Liu, F.; Li, H.-B.; Ding, L. Morokuma, K. *Chem. Rev.* **2015**, 115, 5678.[DOI: https://doi.org/10.1021/cr5004419](https://doi.org/10.1021/cr5004419)

