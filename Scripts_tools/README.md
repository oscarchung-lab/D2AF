### Tools for computations  
**Run_Strain_VIZ.sh**  
Run strain calculation for for giving inp file and queue name  
example: `Run_Strain_VIZ.sh test_M1.inp N4`

**Run_VIZ1.sh/Run_VIZ2.sh**  
Generate g16, xTB, (VIZ1: ani-2x, aiqm1 only for CHON systems) directory and run calculation.   
example: `Run_VIZ1.sh test_M1.inp test_M2.inp N4`, `Run_VIZ2.sh test_M1.inp test_M2.inp test_M3.inp N4`  

**Run_M1_M2.pml/Run_M1_M2_M3.pml**  
run this file by pymol (put in the same directory with OBSV .pml files), it will generate M1 and M2 (M3) pngs   
it should be used after  **savepng.py** installed in pymol:    
`Pymol --> Plugin --> Plugin Manager --> Install New Plugin --> Choose file... --> path of script`


#### Including in OBSV_tools:  
pip install pip install OBSV-tools==1.0.0

**Combine_fig_MS.py/Combine_fig_ppt.py**  `Combine_fig_MS/Combine_fig_ppt`
combine multiple pngs (M1, M2, M3) into one png for publication (label a/b/c/d) or ppt (file names)  

**pml_str.py**  `pml_str`
add addtional command to the pml files such as `bond id x, id x` and `unbond id x, id x` (using `;` to separate lines) in a `""` **not** `''`

