# Max change:      14.19142733
# Min change:       4.62618602

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_146.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 171, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 0, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 83, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)


