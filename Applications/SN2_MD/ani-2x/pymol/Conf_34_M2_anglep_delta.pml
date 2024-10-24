# Max change:       9.82726521
# Min change:       1.20538742

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_34.xyz, mol 
show_as licorice, mol
color grey, mol
color green, id 6
unbond id 1, id 6

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 83, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 223, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 0, 0]
bond (id 1), (id 5)
set_bond stick_color, color3, (id 1), (id 5)

set_color color4,[255, 153, 0]
bond (id 1), (id 4)
set_bond stick_color, color4, (id 1), (id 4)


