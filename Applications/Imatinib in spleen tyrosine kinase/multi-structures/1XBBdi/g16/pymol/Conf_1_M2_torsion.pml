# Max Energy:       7.13117769
# Min Energy:      -4.06156663
# median Energy:    1.53480553

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_1.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 207, 0]
bond (id 32), (id 34)
set_bond stick_color, color1, (id 32), (id 34)

