# Max change:       4.98436109
# Min change:       1.01466967

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_189.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 203, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 0, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 51, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)


