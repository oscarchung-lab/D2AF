# Max change:       0.24499217
# Min change:      -0.07825938

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_2.xyz, mol 
show_as licorice, mol
color grey, mol
color green, id 6
unbond id 1, id 6

# Adding a representation with the appropriate colorID for each bond

set_color color1,[250, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[0, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 158, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)

set_color color4,[255, 0, 0]
bond (id 1), (id 5)
set_bond stick_color, color4, (id 1), (id 5)


