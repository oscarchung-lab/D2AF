# Max change:      -0.00087695
# Min change:      -5.57371617

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[240, 255, 0]
bond (id 2), (id 4)
set_bond stick_color, color1, (id 2), (id 4)

set_color color2,[240, 255, 0]
bond (id 2), (id 5)
set_bond stick_color, color2, (id 2), (id 5)

set_color color3,[240, 255, 0]
bond (id 6), (id 13)
set_bond stick_color, color3, (id 6), (id 13)

set_color color4,[240, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color4, (id 6), (id 14)

set_color color5,[234, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color5, (id 3), (id 9)

set_color color6,[222, 255, 0]
bond (id 9), (id 19)
set_bond stick_color, color6, (id 9), (id 19)

set_color color7,[227, 255, 0]
bond (id 3), (id 10)
set_bond stick_color, color7, (id 3), (id 10)

set_color color8,[197, 255, 0]
bond (id 10), (id 20)
set_bond stick_color, color8, (id 10), (id 20)

set_color color9,[226, 255, 0]
bond (id 4), (id 11)
set_bond stick_color, color9, (id 4), (id 11)

set_color color10,[225, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color10, (id 11), (id 12)

set_color color11,[216, 255, 0]
bond (id 11), (id 22)
set_bond stick_color, color11, (id 11), (id 22)

set_color color12,[243, 255, 0]
bond (id 5), (id 12)
set_bond stick_color, color12, (id 5), (id 12)

set_color color13,[246, 255, 0]
bond (id 12), (id 23)
set_bond stick_color, color13, (id 12), (id 23)

set_color color14,[254, 255, 0]
bond (id 12), (id 24)
set_bond stick_color, color14, (id 12), (id 24)

set_color color15,[220, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color15, (id 19), (id 20)

set_color color16,[250, 255, 0]
bond (id 19), (id 33)
set_bond stick_color, color16, (id 19), (id 33)

set_color color17,[251, 255, 0]
bond (id 19), (id 34)
set_bond stick_color, color17, (id 19), (id 34)

set_color color18,[207, 255, 0]
bond (id 20), (id 36)
set_bond stick_color, color18, (id 20), (id 36)

set_color color19,[239, 255, 0]
bond (id 13), (id 25)
set_bond stick_color, color19, (id 13), (id 25)

set_color color20,[235, 255, 0]
bond (id 25), (id 26)
set_bond stick_color, color20, (id 25), (id 26)

set_color color21,[222, 255, 0]
bond (id 25), (id 38)
set_bond stick_color, color21, (id 25), (id 38)

set_color color22,[252, 255, 0]
bond (id 25), (id 37)
set_bond stick_color, color22, (id 25), (id 37)

set_color color23,[245, 255, 0]
bond (id 14), (id 26)
set_bond stick_color, color23, (id 14), (id 26)

set_color color24,[249, 255, 0]
bond (id 26), (id 39)
set_bond stick_color, color24, (id 26), (id 39)

set_color color25,[252, 255, 0]
bond (id 26), (id 40)
set_bond stick_color, color25, (id 26), (id 40)

set_color color26,[0, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color26, (id 1), (id 3)

set_color color27,[0, 255, 0]
bond (id 1), (id 6)
set_bond stick_color, color27, (id 1), (id 6)


