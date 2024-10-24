# Max Energy:      20.06468579
# Min Energy:     -38.11471948
# median Energy:   -9.02501685

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_2.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 54, 0]
bond (id 32), (id 34)
set_bond stick_color, color1, (id 32), (id 34)
set_color color2,[255, 6, 0]
bond (id 34), (id 36)
set_bond stick_color, color2, (id 34), (id 36)

