# Max Energy:       9.89500000
# Min Energy:      -1.20500000
# median Energy:    4.34500000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 226, 0]
bond (id 4), (id 14)
set_bond stick_color, color1, (id 4), (id 14)

