# Max Energy:      11.33438297
# Min Energy:      -0.67041543
# median Energy:    5.33198377

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 200, 0]
bond (id 4), (id 14)
set_bond stick_color, color1, (id 4), (id 14)

