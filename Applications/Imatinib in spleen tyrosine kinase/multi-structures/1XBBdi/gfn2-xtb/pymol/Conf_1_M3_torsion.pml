# Max Energy:       9.41873385
# Min Energy:      -0.67505183
# median Energy:    4.37184101

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_1.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[91, 255, 0]
bond (id 32), (id 34)
set_bond stick_color, color1, (id 32), (id 34)

