# Max change:       0.03688053
# Min change:       0.03076523

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_14.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 41, 0]
bond (id 3), (id 4)
set_bond stick_color, color1, (id 3), (id 4)

set_color color2,[255, 0, 0]
bond (id 3), (id 5)
set_bond stick_color, color2, (id 3), (id 5)

set_color color3,[255, 42, 0]
bond (id 3), (id 6)
set_bond stick_color, color3, (id 3), (id 6)


