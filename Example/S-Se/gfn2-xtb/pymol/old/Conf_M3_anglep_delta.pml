# Max change:       7.23525480
# Min change:       0.02356650

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 242, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 218, 0]
bond (id 1), (id 8)
set_bond stick_color, color2, (id 1), (id 8)

set_color color3,[255, 231, 0]
bond (id 1), (id 19)
set_bond stick_color, color3, (id 1), (id 19)

set_color color4,[255, 254, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)

set_color color5,[255, 244, 0]
bond (id 3), (id 4)
set_bond stick_color, color5, (id 3), (id 4)

set_color color6,[255, 208, 0]
bond (id 3), (id 6)
set_bond stick_color, color6, (id 3), (id 6)

set_color color7,[255, 218, 0]
bond (id 3), (id 5)
set_bond stick_color, color7, (id 3), (id 5)

set_color color8,[255, 194, 0]
bond (id 22), (id 43)
set_bond stick_color, color8, (id 22), (id 43)

set_color color9,[255, 160, 0]
bond (id 22), (id 64)
set_bond stick_color, color9, (id 22), (id 64)

set_color color10,[255, 225, 0]
bond (id 23), (id 61)
set_bond stick_color, color10, (id 23), (id 61)

set_color color11,[255, 162, 0]
bond (id 23), (id 64)
set_bond stick_color, color11, (id 23), (id 64)

set_color color12,[255, 241, 0]
bond (id 22), (id 51)
set_bond stick_color, color12, (id 22), (id 51)

set_color color13,[255, 228, 0]
bond (id 51), (id 52)
set_bond stick_color, color13, (id 51), (id 52)

set_color color14,[255, 241, 0]
bond (id 51), (id 54)
set_bond stick_color, color14, (id 51), (id 54)

set_color color15,[255, 242, 0]
bond (id 21), (id 55)
set_bond stick_color, color15, (id 21), (id 55)

set_color color16,[255, 242, 0]
bond (id 55), (id 58)
set_bond stick_color, color16, (id 55), (id 58)

set_color color17,[255, 240, 0]
bond (id 55), (id 56)
set_bond stick_color, color17, (id 55), (id 56)

set_color color18,[255, 240, 0]
bond (id 55), (id 57)
set_bond stick_color, color18, (id 55), (id 57)

set_color color19,[255, 243, 0]
bond (id 23), (id 59)
set_bond stick_color, color19, (id 23), (id 59)

set_color color20,[255, 247, 0]
bond (id 59), (id 73)
set_bond stick_color, color20, (id 59), (id 73)

set_color color21,[255, 249, 0]
bond (id 59), (id 77)
set_bond stick_color, color21, (id 59), (id 77)

set_color color22,[255, 249, 0]
bond (id 61), (id 62)
set_bond stick_color, color22, (id 61), (id 62)

set_color color23,[255, 245, 0]
bond (id 61), (id 65)
set_bond stick_color, color23, (id 61), (id 65)

set_color color24,[255, 246, 0]
bond (id 61), (id 69)
set_bond stick_color, color24, (id 61), (id 69)

set_color color25,[255, 142, 0]
bond (id 20), (id 63)
set_bond stick_color, color25, (id 20), (id 63)

set_color color26,[255, 0, 0]
bond (id 63), (id 64)
set_bond stick_color, color26, (id 63), (id 64)

set_color color27,[255, 217, 0]
bond (id 21), (id 64)
set_bond stick_color, color27, (id 21), (id 64)

set_color color28,[255, 246, 0]
bond (id 65), (id 66)
set_bond stick_color, color28, (id 65), (id 66)

set_color color29,[255, 250, 0]
bond (id 65), (id 67)
set_bond stick_color, color29, (id 65), (id 67)

set_color color30,[255, 242, 0]
bond (id 69), (id 71)
set_bond stick_color, color30, (id 69), (id 71)

set_color color31,[255, 252, 0]
bond (id 69), (id 70)
set_bond stick_color, color31, (id 69), (id 70)

set_color color32,[255, 252, 0]
bond (id 69), (id 72)
set_bond stick_color, color32, (id 69), (id 72)

set_color color33,[255, 244, 0]
bond (id 73), (id 74)
set_bond stick_color, color33, (id 73), (id 74)

set_color color34,[255, 233, 0]
bond (id 73), (id 75)
set_bond stick_color, color34, (id 73), (id 75)

set_color color35,[255, 242, 0]
bond (id 73), (id 76)
set_bond stick_color, color35, (id 73), (id 76)

set_color color36,[255, 246, 0]
bond (id 77), (id 78)
set_bond stick_color, color36, (id 77), (id 78)

set_color color37,[255, 226, 0]
bond (id 77), (id 79)
set_bond stick_color, color37, (id 77), (id 79)

set_color color38,[255, 234, 0]
bond (id 77), (id 80)
set_bond stick_color, color38, (id 77), (id 80)


