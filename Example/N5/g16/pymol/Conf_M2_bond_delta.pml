# Max change:       0.05857314
# Min change:      -0.06574843

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[0, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 254, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[255, 55, 0]
bond (id 1), (id 17)
set_bond stick_color, color3, (id 1), (id 17)

set_color color4,[255, 251, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)

set_color color5,[255, 18, 0]
bond (id 2), (id 19)
set_bond stick_color, color5, (id 2), (id 19)

set_color color6,[250, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color6, (id 5), (id 6)

set_color color7,[250, 255, 0]
bond (id 5), (id 9)
set_bond stick_color, color7, (id 5), (id 9)

set_color color8,[255, 240, 0]
bond (id 5), (id 14)
set_bond stick_color, color8, (id 5), (id 14)

set_color color9,[249, 255, 0]
bond (id 5), (id 15)
set_bond stick_color, color9, (id 5), (id 15)

set_color color10,[255, 189, 0]
bond (id 6), (id 7)
set_bond stick_color, color10, (id 6), (id 7)

set_color color11,[249, 255, 0]
bond (id 6), (id 10)
set_bond stick_color, color11, (id 6), (id 10)

set_color color12,[255, 251, 0]
bond (id 6), (id 11)
set_bond stick_color, color12, (id 6), (id 11)

set_color color13,[255, 0, 0]
bond (id 7), (id 8)
set_bond stick_color, color13, (id 7), (id 8)

set_color color14,[255, 254, 0]
bond (id 7), (id 12)
set_bond stick_color, color14, (id 7), (id 12)

set_color color15,[255, 253, 0]
bond (id 8), (id 13)
set_bond stick_color, color15, (id 8), (id 13)

set_color color16,[228, 255, 0]
bond (id 8), (id 15)
set_bond stick_color, color16, (id 8), (id 15)

set_color color17,[255, 239, 0]
bond (id 15), (id 16)
set_bond stick_color, color17, (id 15), (id 16)

set_color color18,[255, 250, 0]
bond (id 17), (id 18)
set_bond stick_color, color18, (id 17), (id 18)

set_color color19,[255, 249, 0]
bond (id 17), (id 21)
set_bond stick_color, color19, (id 17), (id 21)

set_color color20,[255, 243, 0]
bond (id 19), (id 20)
set_bond stick_color, color20, (id 19), (id 20)

set_color color21,[255, 225, 0]
bond (id 19), (id 21)
set_bond stick_color, color21, (id 19), (id 21)

set_color color22,[255, 244, 0]
bond (id 21), (id 22)
set_bond stick_color, color22, (id 21), (id 22)

set_color color23,[223, 255, 0]
bond (id 21), (id 23)
set_bond stick_color, color23, (id 21), (id 23)


