# Max Energy:       6.23637270
# Min Energy:      -1.58252711
# median Energy:    2.32692280

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_1.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[190, 255, 0]
bond (id 32), (id 34)
set_bond stick_color, color1, (id 32), (id 34)

