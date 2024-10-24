# Max Energy:       6.53720751
# Min Energy:      -4.14332560
# median Energy:    1.19694096

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_0.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 38, 0]
bond (id 32), (id 34)
set_bond stick_color, color1, (id 32), (id 34)
set_color color2,[255, 155, 0]
bond (id 34), (id 36)
set_bond stick_color, color2, (id 34), (id 36)

