# Max change:       7.31926337
# Min change:       3.26866072

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_80.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 20, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 0, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 32, 0]
bond (id 1), (id 5)
set_bond stick_color, color3, (id 1), (id 5)

set_color color4,[255, 141, 0]
bond (id 1), (id 4)
set_bond stick_color, color4, (id 1), (id 4)


