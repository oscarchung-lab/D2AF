# Max change:       0.16452783
# Min change:      -0.02729233

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[228, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color1, (id 1), (id 5)

set_color color2,[230, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color2, (id 2), (id 3)

set_color color3,[233, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color3, (id 3), (id 4)

set_color color4,[237, 255, 0]
bond (id 3), (id 5)
set_bond stick_color, color4, (id 3), (id 5)

set_color color5,[255, 0, 0]
bond (id 3), (id 6)
set_bond stick_color, color5, (id 3), (id 6)

set_color color6,[232, 255, 0]
bond (id 4), (id 18)
set_bond stick_color, color6, (id 4), (id 18)

set_color color7,[0, 255, 0]
bond (id 6), (id 7)
set_bond stick_color, color7, (id 6), (id 7)

set_color color8,[255, 224, 0]
bond (id 7), (id 8)
set_bond stick_color, color8, (id 7), (id 8)

set_color color9,[255, 237, 0]
bond (id 7), (id 9)
set_bond stick_color, color9, (id 7), (id 9)

set_color color10,[255, 242, 0]
bond (id 7), (id 10)
set_bond stick_color, color10, (id 7), (id 10)

set_color color11,[153, 255, 0]
bond (id 8), (id 11)
set_bond stick_color, color11, (id 8), (id 11)

set_color color12,[246, 255, 0]
bond (id 9), (id 15)
set_bond stick_color, color12, (id 9), (id 15)

set_color color13,[255, 250, 0]
bond (id 11), (id 12)
set_bond stick_color, color13, (id 11), (id 12)

set_color color14,[255, 248, 0]
bond (id 11), (id 13)
set_bond stick_color, color14, (id 11), (id 13)

set_color color15,[255, 249, 0]
bond (id 11), (id 14)
set_bond stick_color, color15, (id 11), (id 14)

set_color color16,[254, 255, 0]
bond (id 13), (id 16)
set_bond stick_color, color16, (id 13), (id 16)

set_color color17,[252, 255, 0]
bond (id 14), (id 17)
set_bond stick_color, color17, (id 14), (id 17)

set_color color18,[255, 254, 0]
bond (id 18), (id 19)
set_bond stick_color, color18, (id 18), (id 19)

set_color color19,[255, 254, 0]
bond (id 18), (id 20)
set_bond stick_color, color19, (id 18), (id 20)

set_color color20,[241, 255, 0]
bond (id 18), (id 21)
set_bond stick_color, color20, (id 18), (id 21)

set_color color21,[255, 254, 0]
bond (id 22), (id 23)
set_bond stick_color, color21, (id 22), (id 23)

set_color color22,[221, 255, 0]
bond (id 23), (id 24)
set_bond stick_color, color22, (id 23), (id 24)

set_color color23,[231, 255, 0]
bond (id 23), (id 25)
set_bond stick_color, color23, (id 23), (id 25)

set_color color24,[255, 253, 0]
bond (id 23), (id 26)
set_bond stick_color, color24, (id 23), (id 26)


