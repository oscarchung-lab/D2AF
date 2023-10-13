# Max change:       8.10000000
# Min change:       1.55000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_181.xyz, mol 
show_as licorice, mol
color grey, mol
color green, id 6
unbond id 1, id 6

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 206, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 48, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)


