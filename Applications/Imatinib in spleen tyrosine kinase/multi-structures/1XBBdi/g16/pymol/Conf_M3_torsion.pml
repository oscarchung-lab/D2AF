# Max Energy:       9.84000000
# Min Energy:      -1.46500000
# median Energy:    4.18750000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 44, 0]
bond (id 32), (id 34)
set_bond stick_color, color1, (id 32), (id 34)
set_color color2,[-57, 255, 0]
bond (id 34), (id 36)
set_bond stick_color, color2, (id 34), (id 36)

