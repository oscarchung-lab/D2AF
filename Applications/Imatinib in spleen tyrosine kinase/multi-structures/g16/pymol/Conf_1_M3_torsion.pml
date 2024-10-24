# Max Energy:      10.56452304
# Min Energy:      -0.43606015
# median Energy:    5.06423145

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_1.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[34, 255, 0]
bond (id 32), (id 34)
set_bond stick_color, color1, (id 32), (id 34)
set_color color2,[255, 220, 0]
bond (id 34), (id 36)
set_bond stick_color, color2, (id 34), (id 36)

