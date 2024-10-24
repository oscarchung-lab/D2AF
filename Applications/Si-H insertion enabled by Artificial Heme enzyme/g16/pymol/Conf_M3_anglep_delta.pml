# Max change:       4.32464634
# Min change:       0.00740983

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 47,id 74

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 234, 0]
bond (id 47), (id 48)
set_bond stick_color, color1, (id 47), (id 48)

set_color color2,[255, 183, 0]
bond (id 48), (id 50)
set_bond stick_color, color2, (id 48), (id 50)

set_color color3,[255, 220, 0]
bond (id 48), (id 49)
set_bond stick_color, color3, (id 48), (id 49)

set_color color4,[255, 239, 0]
bond (id 50), (id 51)
set_bond stick_color, color4, (id 50), (id 51)

set_color color5,[255, 233, 0]
bond (id 51), (id 52)
set_bond stick_color, color5, (id 51), (id 52)

set_color color6,[255, 236, 0]
bond (id 51), (id 53)
set_bond stick_color, color6, (id 51), (id 53)

set_color color7,[255, 244, 0]
bond (id 51), (id 54)
set_bond stick_color, color7, (id 51), (id 54)

set_color color8,[255, 250, 0]
bond (id 54), (id 56)
set_bond stick_color, color8, (id 54), (id 56)

set_color color9,[255, 252, 0]
bond (id 54), (id 55)
set_bond stick_color, color9, (id 54), (id 55)

set_color color10,[255, 250, 0]
bond (id 54), (id 57)
set_bond stick_color, color10, (id 54), (id 57)

set_color color11,[255, 248, 0]
bond (id 47), (id 58)
set_bond stick_color, color11, (id 47), (id 58)

set_color color12,[255, 194, 0]
bond (id 58), (id 59)
set_bond stick_color, color12, (id 58), (id 59)

set_color color13,[255, 200, 0]
bond (id 58), (id 60)
set_bond stick_color, color13, (id 58), (id 60)

set_color color14,[255, 77, 0]
bond (id 63), (id 73)
set_bond stick_color, color14, (id 63), (id 73)

set_color color15,[255, 0, 0]
bond (id 73), (id 74)
set_bond stick_color, color15, (id 73), (id 74)

set_color color16,[255, 128, 0]
bond (id 73), (id 79)
set_bond stick_color, color16, (id 73), (id 79)

set_color color17,[255, 208, 0]
bond (id 73), (id 75)
set_bond stick_color, color17, (id 73), (id 75)

set_color color18,[255, 208, 0]
bond (id 75), (id 76)
set_bond stick_color, color18, (id 75), (id 76)

set_color color19,[255, 251, 0]
bond (id 75), (id 77)
set_bond stick_color, color19, (id 75), (id 77)

set_color color20,[255, 251, 0]
bond (id 75), (id 78)
set_bond stick_color, color20, (id 75), (id 78)

set_color color21,[255, 187, 0]
bond (id 79), (id 81)
set_bond stick_color, color21, (id 79), (id 81)

set_color color22,[255, 214, 0]
bond (id 79), (id 82)
set_bond stick_color, color22, (id 79), (id 82)

set_color color23,[255, 237, 0]
bond (id 79), (id 80)
set_bond stick_color, color23, (id 79), (id 80)

set_color color24,[255, 252, 0]
bond (id 2), (id 8)
set_bond stick_color, color24, (id 2), (id 8)

set_color color25,[255, 238, 0]
bond (id 8), (id 33)
set_bond stick_color, color25, (id 8), (id 33)

set_color color26,[255, 251, 0]
bond (id 4), (id 12)
set_bond stick_color, color26, (id 4), (id 12)

set_color color27,[255, 248, 0]
bond (id 12), (id 32)
set_bond stick_color, color27, (id 12), (id 32)

set_color color28,[255, 254, 0]
bond (id 5), (id 13)
set_bond stick_color, color28, (id 5), (id 13)

set_color color29,[255, 251, 0]
bond (id 13), (id 32)
set_bond stick_color, color29, (id 13), (id 32)

set_color color30,[255, 241, 0]
bond (id 9), (id 33)
set_bond stick_color, color30, (id 9), (id 33)

set_color color31,[255, 254, 0]
bond (id 38), (id 41)
set_bond stick_color, color31, (id 38), (id 41)

set_color color32,[255, 254, 0]
bond (id 38), (id 45)
set_bond stick_color, color32, (id 38), (id 45)


