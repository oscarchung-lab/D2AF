### Distortion Map: Distortion Distribution Analysis enabled by Fragmentation (D2AF)
<div align=center><img src=Docs/toc.png  width="400" /></div>

#### (A) Description
D2AF is an efficient, general and flexible fragmentation-based approach for local distortion analysis on various chemical and biological-related molecules. D2AF bases on fragmentation and ONIOM-type boundary strategies to evaluate/estimate (relative) local distortion energies of one (or multiple) structure(s)/conformer(s) (**Tar**; more distortion) relative to the reference structure (**Ref**; less distortion) at the given computational chemistry level (the user adopts). 

**Any type of structures (stationary-point structures: e.g., local minimum, transition state(s); non-stationary-point structures: e.g., MD- or IRC-derived structures) can be adopted as **Tar** and **Ref** and compared in D2AF.**  (Relative) Local distortion energies of all subsystems/fragments for the **Tar** structure(s) relative to the **Ref** structure can be used for visualization (so-called **distortion map** or distortion distribution). 


Fragmentation of subsystems can be defined using three approachs:
* 1. Atomic/fragment resolution (**M1**)
* 2. Individual bond and angle resolution based on internal coordinates (bond, angle, optionlly dihedral) (**M2**)
* 3. Combination of **M1 & M2**  (**M3**), esp. complex systems containing aromatic and/or metal-coordination 


#### Workflow
<div align=center><img src=Docs/Fig1.png  width="640" /></div>

<div align=center><big><b>Workflow</b></big></div>
<!--
<div align=center><img src=Docs/SchemeS1.png  width="640" /></div>
<div align=center><big><b>Technique details</b></big></div>
-->


####  (B) Installation
**conda env**

    conda env create -f environment.yml


**using pypi**
        
    pip install D2AF  
or

    pip install D2AF-x.x.x-py3-none-any.whl
     
##### (C) Requirements
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
- ORCA 5 (method info of orca should be written in the method line of gjf file)
see example in \Applications\reverse Cope elimination\CCSD\4F-reactant.gjf
    *\#* + **orca method** + *geom=connectivity*
```    
    # DLPNO-CCSD(T) cc-pVTZ cc-pVTZ/C RIJDX geom=connectivity
```
You need to define **$ORCA_BIN** in the environment variable (where executable **orca** file installed) e.g. 
 ```
    export $ORCA_BIN=/home/username/orca_5.0.0_linux_x86-64/bin
 ``` 
 
Quantum Chemical (QC) calculation packages:
- Gaussian: Gaussian03,09,16
- xTB: xTB-python (not support "calculator=nocalc")
- ANI: torchani  (not support "calculator=nocalc")
- Mlatom: AIQM1 (not support "calculator=nocalc")
- *Any codes are possible through generating their corresponding QC input files from our generated XYZ files for each fragment, running them and extracting energy (in a.u.) by users' script(s) (using "calculator=nocalc" in the D2AF input; see below)* 

#### (D) Usage

*Optional: to check any large diheral difference bewteen the reference and target forms by Openbabel. If detecting any large diheral difference(s), modify **fraglist** for **M1** or add **#include** for **M1 or M2*** e.g.

    check_dihedral ABC-ref.gjf ABC-conf.gjf
    check_dihedral ABC-ref.gjf ABC-conf.gjf thershold(optional)
    
where ABC-ref.gjf & ABC-conf.gjf are any xyz or Gaussian gjf files for the reference and target forms. A value is the thershold (optional) for the large diheral(s) to be printed. 

*Optional: to generate suggestive fragmentation list for **M1 or M3*** e.g.

    autofragment coord

where coord is any xyz file or Gaussian gjf file with/without connectivity. It will generate a new gjf file with connectivity, fraglist for **M1 or M3** as well as a new D2AF template input file (users can modify). No need for **M2**


**To run all proccess: fragmentation, calculations via our calls, and analysis. D2AF input (e.g., ABC.inp) and output (e.g., ABC.dat) E.g.,** 

    D2AF -inp ABC.inp > ABC.dat 

  
*To run fragmentation only; subsequently run/call quantum chemistry calculations (**setting "calculator=nocalc" in the D2AF input file**) by users*

1. Generate fragments, which are then written in **\tmpdir** folder (xyz files with charge and multiplicity in the second line). E.g.,
```       
    D2AF -inp ABC.inp  > ABC.dat
```
    
2. Run QC calculations and extract the energies by users (e.g. running jobs in different machine or a way to use specific QC codes users want).
   
- (a) *run the calculations by users (fragments in **xxx_i.xyz** files generated in the **\tmpdir** folder)*

- (b) *extract the energies to **xxx_i.log** (in a.u. unit; 1st line) for each structure in the **\tmpdir** folder* **Make sure your QC output file names does not have *.log*, (or add the energy to the 1st line of the log files, if you use different QC packages and prefer to use .log as your QC output file names.** Possibly a new keyword would be added to read an external file with a list of energies.  
        
3. Run D2AF again to do analysis only, after the QC results are extracted in the above step 2 by users (**setting "calculator=nocalc" in the D2AF input file**). E.g.,
```         
    D2AF -inp ABC.inp  > ABC_anal.dat
``` 


*To list commands*

    D2AF -h


##### An example of the D2AF input file showed in our example directories
calculator available: 
    ['g03', 'g09', 'g16','gfn1-xtb', 'gfn2-xtb','ani-1x', 'ani-2x', 'ani-1ccx', 'aiqm1', 'nocalc']

D2AF input file example:
    
    ref = ABC-ref.gjf
    conf = ABC-conf.gjf
    method = 1
    cpu = int
    pal = int
    calculator = g16 
    scale = log
    
    #fraglist (optional: only method = 1/3 required)
    1-2,4-6
    3

    #coordination (optional: only method = 3 available)
    3-5
    
    #include (optional: only method = 2/3; add extra bonds/angles/diherals users want)
    1 2
    1 2 3 

    #exclude (optional: only method = 2/3; delete extra bonds/angles users do not want)
    4 7 
    4 7 9

    #charge (optional: only if formal atomic charge (second value) of the pariticular atom(s) (first value) is not zero; required)
    5 1
    
    #spin (optional: only if formal atomic spin (second value) of the pariticular atom(s) (first value) is not zero; required)
    3 1

#### (E) Input preparations/commmand explanations
**ref**: e.g., ABC-ref.gjf, a reference structure (**Ref** form) in a Gaussian file format, containing **method lines**, **cartesian coordinates** and **connectivity**
* the connectivity (bond order) values should be **1.0, 2.0, 3.0** only! 
* **1.5 is forbidden**, it should be modified before running D2AF!
    
**conf**: e.g., ABC-conf.gjf or ABC-conf.xyz, a target structure (gjf or xyz), or multiple target structures in one xyz file (**Tar** form)

**method**: 1 for atomic/framentation-based (**M1**), 2 for bond/angle/diheral based (**M2**; users need to give the diheral list in #include), 3 for 1+2 method (**M3**)

**cpu**: number of cpu for subsystem computation (int)

**pal**: number of paralle subsystem computations (available for Gaussian, xTB; int)

**calculator**: Gaussian (g16, g09), "xTB", "ANI", "AIQM1" for subsystem computations via our call. Alternatively, "nocalc" for calling QC calculations or do analysis by users (seperating fragmentation, calculations and analysis processes) 

**scale**: log/e scale factor for pymol visualization

**fraglist**: **for M1/M3**, define the fragmentation list

**coordination**: **for M3**, define the metal coordination center/region (same listing format as fraglist). Some molecular editors (e.g., Gauview, pymol, VMD) may easily set th coordination sphere and get the list of these atoms involved

**include**: **for M2/M3**, add additional bond(s)/angle(s)/diheral(s) users want. *By default, all diherals are not considered. Users should add the diheral list they want.* 

**exclude**: **for M2/M3**, exclude the bond(s)/angle(s) users want

**charge**: define the formal atomic charge (second value) of the pariticular atom(s) (first value) if not 0 

**spin**: define the formal atomic spin (second value) of the pariticular atom(s) (first value) if not 0 (using integer: spin * 2)


*Currently, if users want to use different link atoms for some specific boundary(ies) they like, users need to manually modify their corresponding QC input files* Possibly, new keywords will be added to modify a few link atoms.



#### (F) Analysis on our generate files :  

 - An excel file (*M1/M2/M3.xlsx) stores all detailed (relative) distortion energy as well as changes (delta) of the coordinates.
 - A few Python scripts display (relative) distortion map (e.g., *M1_frag.pml, *M2_total.pml, *M2_bond.pml, *M2_angle.pml)
 -  A few Python scripts display the difference (delta) of the coordinates (e.g., *bond_delta.pml, *anglep_delta.pml, *anglen_delta.pml). *anglep_delta.pml and *anglen_delta.pml represent the positive and negative changes in the bond angles, respectively.
 -  *frag_show.pml shows fragmentation (e.g. M1).    
 - *Pymol possibly display slim bonds with hydrogen atoms. Users can type "set stick_h_scale, 0.9" and/or "set stick_radius, 0.2" in the Pymol command bar* to modify the H stick thickness and/or the stick radius users like. If users prefer to use their preferred Pymol setting(s), users can add setting commands in their pymol file (.pymolrc.py) Please see Pymol Wiki website (https://pymolwiki.org/)
 - D2AF output (e.g., ABC.dat; cf., the above **(D) Usage section**) lists the key info. Also, a large change/difference in diheral(s) are given/listed in the output file for **the M2/M3 case. By default, (relative) distortion energy for diherals are not considered. If large change/difference in some diherals are found, users should add these diheral list in the "#include" keyword and restart analysis for M2 (running calculations of new diheral fragment(s) only if all old files kept intact) again at the same directory.** Meanwhile, users can **modify the fraglist of the D2AF input to expand the size of the related fragments (including diheral contribution) for the M1/M3 cases and perform new D2AF calculations.** In this case, *restart D2AF* is **NOT recommended for the M1/M3 cases**, as the fraglist (as well as fragments) is changed.      


#### (G) Additional D2AF tools:  

**autofragment.py**  `autofragment` 

Auto fragmentation. A pymol script (**_auto_frag_show.pml) is generated. Users can check fragments and judge whether fragments are chemically reasonable. Users can manually modify the D2AF input to change fragments, if some are not reasonable.

input: xyz file or Gaussian gjf file with/without connectivity

ouput: gjf file with connectivity, suggestive fraglist for **M1**, pymol script for visualization


**atompair.py**  `atompair` 

Pairing atom order between two gjfs with the same connectivity info but different label order 

input: gjf1 gjf2 Gaussian files with connectivity

ouput: new gjf2 with same atom label to gjf1

the symmetric atoms cannot be applid (warning information)


**pml_str.py**  `pml_str`

Add addtional commands to Pymol script (pml) files for `bond id x, id x` and `unbond id x, id x` (using `;` to separate lines) in a `""` **not** `''`


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



#### Citations

**D2AF**

Efficient and Flexible Approach for Local Distortion: Distortion Distribution Analysis enabled by Fragmentation. Z. Yan, Y. S. Liao, X. Li, and L. W. Chung, **2024** *(submitted)* & *ChemRxiv.* DOI: 10.26434/chemrxiv-2024-07rmf (https://doi.org/10.26434/chemrxiv-2024-07rmf) This content is a preprint and has not been peer-reviewed.


**Distortion/Interaction-Activation Strain Model**

The activation strain model and molecular orbital theory: understanding and designing chemical reactions. I. Fernandez and F. M. Bickelhaupt, Chem. Soc. Rev., **2014**, 43, 4953-4967. [DOI: 10.1039/C4CS00055B](https://pubs.rsc.org/en/content/articlelanding/2014/cs/c4cs00055b))

Analyzing Reaction Rates with the Distortion/Interaction-Activation Strain Model. F. M. Bickelhaupt and K. N. Houk, Angew. Chem., Int. Ed., **2017**, 56, 10070-10086. [DOI: 10.1002/anie.201701486](https://onlinelibrary.wiley.com/doi/10.1002/anie.201701486)

Distortion/Interaction Energy Control of 1,3-Dipolar Cycloaddition Reactivity. D. H. Ess and K. Houk, J. Am. Chem. Soc., **2007**, 129, 10646-10647. [DOI: 10.1021/ja0734086](https://pubs.acs.org/doi/10.1021/ja0734086)

An ab initio molecular orbital study of organic reactions. The energy, charge, and spin decomposition analyses at the transition state and along the reaction pathway. S. Nagase and K. Morokuma, J. Am. Chem. Soc., **1978**, 100, 1666-1672. [DOI: 10.1021/ja00474a005](https://pubs.acs.org/doi/10.1021/ja00474a005)

**ONIOM Link-atom Treatment**

The ONIOM Method and its Applications. Chung, L. W.; Sameera, W. M. C.; Ramozzi, R.; Page, A. J.; Hatanaka, M.; Petrova, G. P.; Harris, T. V.; Li, X.; Ke, Z.; Liu, F.; Li, H.-B.; Ding, L. Morokuma, K. *Chem. Rev.* **2015**, 115, 5678. [DOI: 10.1021/cr5004419](https://doi.org/10.1021/cr5004419)

**The other approach to analyze strain**

A quantitative quantum-chemical analysis tool for the distribution of mechanical force in molecules. T. Stauch and A. Dreuw, J. Chem. Phys., **2014**, 140, 134107. [DOI: 10.1063/1.4870334](https://pubs.aip.org/aip/jcp/article/140/13/134107/351239)

Strain visualization for strained macrocycles. C. E. Colwell, T. W. Price, T. Stauch and R. Jasti, Chem. Sci., **2020**, 11, 3923-3930. [DOI: 10.1039/D0SC00629G](https://pubs.rsc.org/en/content/articlelanding/2020/sc/d0sc00629g)
