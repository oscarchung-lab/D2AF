# Max change:      10.76066318
# Min change:       0.05083667

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_2.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 246, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 55, 0]
bond (id 1), (id 18)
set_bond stick_color, color2, (id 1), (id 18)

set_color color3,[255, 240, 0]
bond (id 1), (id 3)
set_bond stick_color, color3, (id 1), (id 3)

set_color color4,[255, 212, 0]
bond (id 1), (id 4)
set_bond stick_color, color4, (id 1), (id 4)

set_color color5,[255, 234, 0]
bond (id 4), (id 5)
set_bond stick_color, color5, (id 4), (id 5)

set_color color6,[255, 50, 0]
bond (id 4), (id 7)
set_bond stick_color, color6, (id 4), (id 7)

set_color color7,[255, 0, 0]
bond (id 7), (id 8)
set_bond stick_color, color7, (id 7), (id 8)

set_color color8,[255, 75, 0]
bond (id 7), (id 12)
set_bond stick_color, color8, (id 7), (id 12)

set_color color9,[255, 233, 0]
bond (id 8), (id 10)
set_bond stick_color, color9, (id 8), (id 10)

set_color color10,[255, 238, 0]
bond (id 8), (id 11)
set_bond stick_color, color10, (id 8), (id 11)

set_color color11,[255, 232, 0]
bond (id 12), (id 13)
set_bond stick_color, color11, (id 12), (id 13)

set_color color12,[255, 211, 0]
bond (id 12), (id 15)
set_bond stick_color, color12, (id 12), (id 15)

set_color color13,[255, 242, 0]
bond (id 15), (id 16)
set_bond stick_color, color13, (id 15), (id 16)

set_color color14,[255, 242, 0]
bond (id 15), (id 17)
set_bond stick_color, color14, (id 15), (id 17)

set_color color15,[255, 99, 0]
bond (id 15), (id 18)
set_bond stick_color, color15, (id 15), (id 18)

set_color color16,[255, 10, 0]
bond (id 18), (id 19)
set_bond stick_color, color16, (id 18), (id 19)

set_color color17,[255, 230, 0]
bond (id 19), (id 21)
set_bond stick_color, color17, (id 19), (id 21)

set_color color18,[255, 247, 0]
bond (id 31), (id 32)
set_bond stick_color, color18, (id 31), (id 32)

set_color color19,[255, 251, 0]
bond (id 32), (id 33)
set_bond stick_color, color19, (id 32), (id 33)

set_color color20,[255, 250, 0]
bond (id 32), (id 34)
set_bond stick_color, color20, (id 32), (id 34)

set_color color21,[255, 253, 0]
bond (id 34), (id 35)
set_bond stick_color, color21, (id 34), (id 35)

set_color color22,[255, 247, 0]
bond (id 43), (id 44)
set_bond stick_color, color22, (id 43), (id 44)

set_color color23,[255, 244, 0]
bond (id 44), (id 46)
set_bond stick_color, color23, (id 44), (id 46)

set_color color24,[255, 238, 0]
bond (id 44), (id 47)
set_bond stick_color, color24, (id 44), (id 47)

set_color color25,[255, 231, 0]
bond (id 49), (id 50)
set_bond stick_color, color25, (id 49), (id 50)

set_color color26,[255, 231, 0]
bond (id 49), (id 51)
set_bond stick_color, color26, (id 49), (id 51)


