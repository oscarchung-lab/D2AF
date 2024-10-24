# Max change:       7.04195489
# Min change:       0.03556692

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 7,id 14

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 186, 0]
bond (id 15), (id 26)
set_bond stick_color, color1, (id 15), (id 26)

set_color color2,[255, 174, 0]
bond (id 15), (id 27)
set_bond stick_color, color2, (id 15), (id 27)

set_color color3,[255, 207, 0]
bond (id 15), (id 28)
set_bond stick_color, color3, (id 15), (id 28)

set_color color4,[255, 224, 0]
bond (id 14), (id 24)
set_bond stick_color, color4, (id 14), (id 24)

set_color color5,[255, 224, 0]
bond (id 24), (id 40)
set_bond stick_color, color5, (id 24), (id 40)

set_color color6,[255, 232, 0]
bond (id 24), (id 38)
set_bond stick_color, color6, (id 24), (id 38)

set_color color7,[255, 252, 0]
bond (id 24), (id 39)
set_bond stick_color, color7, (id 24), (id 39)

set_color color8,[255, 237, 0]
bond (id 38), (id 50)
set_bond stick_color, color8, (id 38), (id 50)

set_color color9,[255, 253, 0]
bond (id 38), (id 51)
set_bond stick_color, color9, (id 38), (id 51)

set_color color10,[255, 245, 0]
bond (id 38), (id 49)
set_bond stick_color, color10, (id 38), (id 49)

set_color color11,[255, 195, 0]
bond (id 25), (id 41)
set_bond stick_color, color11, (id 25), (id 41)

set_color color12,[255, 232, 0]
bond (id 41), (id 53)
set_bond stick_color, color12, (id 41), (id 53)

set_color color13,[255, 218, 0]
bond (id 41), (id 54)
set_bond stick_color, color13, (id 41), (id 54)

set_color color14,[255, 235, 0]
bond (id 35), (id 48)
set_bond stick_color, color14, (id 35), (id 48)

set_color color15,[255, 244, 0]
bond (id 48), (id 58)
set_bond stick_color, color15, (id 48), (id 58)

set_color color16,[255, 239, 0]
bond (id 48), (id 59)
set_bond stick_color, color16, (id 48), (id 59)

set_color color17,[255, 240, 0]
bond (id 48), (id 57)
set_bond stick_color, color17, (id 48), (id 57)

set_color color18,[255, 245, 0]
bond (id 49), (id 52)
set_bond stick_color, color18, (id 49), (id 52)

set_color color19,[255, 251, 0]
bond (id 49), (id 60)
set_bond stick_color, color19, (id 49), (id 60)

set_color color20,[255, 253, 0]
bond (id 49), (id 61)
set_bond stick_color, color20, (id 49), (id 61)

set_color color21,[255, 238, 0]
bond (id 41), (id 52)
set_bond stick_color, color21, (id 41), (id 52)

set_color color22,[255, 239, 0]
bond (id 52), (id 62)
set_bond stick_color, color22, (id 52), (id 62)

set_color color23,[255, 252, 0]
bond (id 52), (id 63)
set_bond stick_color, color23, (id 52), (id 63)

set_color color24,[255, 248, 0]
bond (id 44), (id 56)
set_bond stick_color, color24, (id 44), (id 56)

set_color color25,[255, 229, 0]
bond (id 56), (id 57)
set_bond stick_color, color25, (id 56), (id 57)

set_color color26,[255, 242, 0]
bond (id 56), (id 65)
set_bond stick_color, color26, (id 56), (id 65)

set_color color27,[255, 234, 0]
bond (id 57), (id 67)
set_bond stick_color, color27, (id 57), (id 67)

set_color color28,[255, 234, 0]
bond (id 57), (id 66)
set_bond stick_color, color28, (id 57), (id 66)

set_color color29,[255, 251, 0]
bond (id 66), (id 68)
set_bond stick_color, color29, (id 66), (id 68)

set_color color30,[255, 252, 0]
bond (id 66), (id 69)
set_bond stick_color, color30, (id 66), (id 69)

set_color color31,[255, 253, 0]
bond (id 66), (id 70)
set_bond stick_color, color31, (id 66), (id 70)

set_color color32,[255, 249, 0]
bond (id 67), (id 73)
set_bond stick_color, color32, (id 67), (id 73)

set_color color33,[255, 253, 0]
bond (id 67), (id 71)
set_bond stick_color, color33, (id 67), (id 71)

set_color color34,[255, 252, 0]
bond (id 67), (id 72)
set_bond stick_color, color34, (id 67), (id 72)

set_color color35,[255, 0, 0]
bond (id 1), (id 2)
set_bond stick_color, color35, (id 1), (id 2)

set_color color36,[255, 199, 0]
bond (id 1), (id 3)
set_bond stick_color, color36, (id 1), (id 3)

set_color color37,[255, 204, 0]
bond (id 1), (id 44)
set_bond stick_color, color37, (id 1), (id 44)

set_color color38,[255, 253, 0]
bond (id 22), (id 35)
set_bond stick_color, color38, (id 22), (id 35)

set_color color39,[255, 253, 0]
bond (id 22), (id 36)
set_bond stick_color, color39, (id 22), (id 36)

set_color color40,[255, 105, 0]
bond (id 1), (id 6)
set_bond stick_color, color40, (id 1), (id 6)


