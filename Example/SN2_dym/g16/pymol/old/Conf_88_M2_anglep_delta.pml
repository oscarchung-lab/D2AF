# Max change:       6.24095336
# Min change:       2.03840700

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_88.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 17, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 0, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[255, 171, 0]
bond (id 1), (id 3)
set_bond stick_color, color3, (id 1), (id 3)

set_color color4,[255, 154, 0]
bond (id 1), (id 5)
set_bond stick_color, color4, (id 1), (id 5)


