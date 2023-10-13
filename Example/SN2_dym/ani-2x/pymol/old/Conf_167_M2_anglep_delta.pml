# Max change:      11.57237494
# Min change:       4.52340231

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_167.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 155, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 0, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 99, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)


