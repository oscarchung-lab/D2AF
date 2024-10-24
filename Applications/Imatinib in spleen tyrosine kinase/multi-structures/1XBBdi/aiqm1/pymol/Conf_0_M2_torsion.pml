# Max Energy:       5.49887906
# Min Energy:      -4.14332560
# median Energy:    0.67777673

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_0.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 60, 0]
bond (id 32), (id 34)
set_bond stick_color, color1, (id 32), (id 34)

