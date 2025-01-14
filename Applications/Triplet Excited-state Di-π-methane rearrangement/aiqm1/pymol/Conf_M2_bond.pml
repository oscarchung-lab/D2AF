# Max Energy:       1.59608265
# Min Energy:      -1.47769115
# median Energy:    0.05919575

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9, id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 189, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[255, 187, 0]
bond (id 1), (id 6)
set_bond stick_color, color2, (id 1), (id 6)
set_color color3,[255, 180, 0]
bond (id 1), (id 11)
set_bond stick_color, color3, (id 1), (id 11)
set_color color4,[255, 194, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)
set_color color5,[255, 180, 0]
bond (id 2), (id 12)
set_bond stick_color, color5, (id 2), (id 12)
set_color color6,[255, 193, 0]
bond (id 3), (id 4)
set_bond stick_color, color6, (id 3), (id 4)
set_color color7,[255, 181, 0]
bond (id 3), (id 7)
set_bond stick_color, color7, (id 3), (id 7)
set_color color8,[255, 218, 0]
bond (id 4), (id 5)
set_bond stick_color, color8, (id 4), (id 5)
set_color color9,[255, 182, 0]
bond (id 4), (id 8)
set_bond stick_color, color9, (id 4), (id 8)
set_color color10,[255, 195, 0]
bond (id 5), (id 6)
set_bond stick_color, color10, (id 5), (id 6)
set_color color11,[255, 181, 0]
bond (id 5), (id 13)
set_bond stick_color, color11, (id 5), (id 13)
set_color color12,[255, 180, 0]
bond (id 6), (id 14)
set_bond stick_color, color12, (id 6), (id 14)
set_color color13,[255, 149, 0]
bond (id 7), (id 10)
set_bond stick_color, color13, (id 7), (id 10)
set_color color14,[255, 180, 0]
bond (id 7), (id 15)
set_bond stick_color, color14, (id 7), (id 15)
set_color color15,[255, 177, 0]
bond (id 7), (id 18)
set_bond stick_color, color15, (id 7), (id 18)
set_color color16,[255, 88, 0]
bond (id 8), (id 9)
set_bond stick_color, color16, (id 8), (id 9)
set_color color17,[255, 183, 0]
bond (id 8), (id 16)
set_bond stick_color, color17, (id 8), (id 16)
set_color color18,[255, 155, 0]
bond (id 8), (id 17)
set_bond stick_color, color18, (id 8), (id 17)
set_color color19,[255, 61, 0]
bond (id 9), (id 10)
set_bond stick_color, color19, (id 9), (id 10)
set_color color20,[255, 153, 0]
bond (id 9), (id 21)
set_bond stick_color, color20, (id 9), (id 21)
set_color color21,[255, 150, 0]
bond (id 10), (id 22)
set_bond stick_color, color21, (id 10), (id 22)
set_color color22,[255, 71, 0]
bond (id 17), (id 18)
set_bond stick_color, color22, (id 17), (id 18)
set_color color23,[255, 179, 0]
bond (id 17), (id 20)
set_bond stick_color, color23, (id 17), (id 20)
set_color color24,[255, 177, 0]
bond (id 18), (id 19)
set_bond stick_color, color24, (id 18), (id 19)

