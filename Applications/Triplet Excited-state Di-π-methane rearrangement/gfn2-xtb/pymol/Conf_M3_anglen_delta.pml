# Max change:      -0.20000000
# Min change:      -8.75000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9,id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[141, 255, 0]
bond (id 7), (id 10)
set_bond stick_color, color1, (id 7), (id 10)

set_color color2,[115, 255, 0]
bond (id 7), (id 18)
set_bond stick_color, color2, (id 7), (id 18)

set_color color3,[23, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color3, (id 8), (id 9)

set_color color4,[0, 255, 0]
bond (id 8), (id 17)
set_bond stick_color, color4, (id 8), (id 17)

set_color color5,[240, 255, 0]
bond (id 9), (id 10)
set_bond stick_color, color5, (id 9), (id 10)

set_color color6,[220, 255, 0]
bond (id 17), (id 20)
set_bond stick_color, color6, (id 17), (id 20)

set_color color7,[196, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color7, (id 17), (id 18)

set_color color8,[249, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color8, (id 18), (id 19)


