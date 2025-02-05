# Max Energy:      17.56390142
# Min Energy:      -0.16421068
# median Energy:    8.69984537

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 174, 0]
bond (id 4), (id 14)
set_bond stick_color, color1, (id 4), (id 14)

