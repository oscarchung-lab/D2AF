# Max change:       1.53553493
# Min change:       0.10812591

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 184, 0]
bond (id 4), (id 5)
set_bond stick_color, color1, (id 4), (id 5)

set_color color2,[255, 184, 0]
bond (id 4), (id 9)
set_bond stick_color, color2, (id 4), (id 9)

set_color color3,[255, 123, 0]
bond (id 4), (id 11)
set_bond stick_color, color3, (id 4), (id 11)

set_color color4,[255, 121, 0]
bond (id 6), (id 7)
set_bond stick_color, color4, (id 6), (id 7)

set_color color5,[255, 175, 0]
bond (id 6), (id 9)
set_bond stick_color, color5, (id 6), (id 9)

set_color color6,[255, 201, 0]
bond (id 3), (id 7)
set_bond stick_color, color6, (id 3), (id 7)

set_color color7,[255, 237, 0]
bond (id 9), (id 10)
set_bond stick_color, color7, (id 9), (id 10)

set_color color8,[255, 141, 0]
bond (id 1), (id 11)
set_bond stick_color, color8, (id 1), (id 11)

set_color color9,[255, 2, 0]
bond (id 12), (id 13)
set_bond stick_color, color9, (id 12), (id 13)

set_color color10,[255, 0, 0]
bond (id 13), (id 15)
set_bond stick_color, color10, (id 13), (id 15)

set_color color11,[255, 224, 0]
bond (id 13), (id 14)
set_bond stick_color, color11, (id 13), (id 14)

set_color color12,[255, 222, 0]
bond (id 13), (id 16)
set_bond stick_color, color12, (id 13), (id 16)

set_color color13,[255, 143, 0]
bond (id 12), (id 17)
set_bond stick_color, color13, (id 12), (id 17)

set_color color14,[255, 158, 0]
bond (id 17), (id 18)
set_bond stick_color, color14, (id 17), (id 18)

set_color color15,[255, 216, 0]
bond (id 17), (id 20)
set_bond stick_color, color15, (id 17), (id 20)


