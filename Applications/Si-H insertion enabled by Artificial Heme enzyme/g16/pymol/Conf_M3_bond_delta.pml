# Max change:       0.18297966
# Min change:      -0.01747433

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 47,id 74

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 254, 0]
bond (id 2), (id 6)
set_bond stick_color, color1, (id 2), (id 6)

set_color color2,[255, 253, 0]
bond (id 5), (id 11)
set_bond stick_color, color2, (id 5), (id 11)

set_color color3,[237, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color3, (id 6), (id 14)

set_color color4,[255, 254, 0]
bond (id 7), (id 15)
set_bond stick_color, color4, (id 7), (id 15)

set_color color5,[255, 254, 0]
bond (id 7), (id 31)
set_bond stick_color, color5, (id 7), (id 31)

set_color color6,[238, 255, 0]
bond (id 8), (id 16)
set_bond stick_color, color6, (id 8), (id 16)

set_color color7,[252, 255, 0]
bond (id 9), (id 17)
set_bond stick_color, color7, (id 9), (id 17)

set_color color8,[254, 255, 0]
bond (id 10), (id 18)
set_bond stick_color, color8, (id 10), (id 18)

set_color color9,[239, 255, 0]
bond (id 10), (id 30)
set_bond stick_color, color9, (id 10), (id 30)

set_color color10,[251, 255, 0]
bond (id 11), (id 19)
set_bond stick_color, color10, (id 11), (id 19)

set_color color11,[251, 255, 0]
bond (id 12), (id 20)
set_bond stick_color, color11, (id 12), (id 20)

set_color color12,[252, 255, 0]
bond (id 13), (id 21)
set_bond stick_color, color12, (id 13), (id 21)

set_color color13,[255, 254, 0]
bond (id 32), (id 36)
set_bond stick_color, color13, (id 32), (id 36)

set_color color14,[255, 254, 0]
bond (id 33), (id 37)
set_bond stick_color, color14, (id 33), (id 37)

set_color color15,[255, 206, 0]
bond (id 47), (id 48)
set_bond stick_color, color15, (id 47), (id 48)

set_color color16,[255, 231, 0]
bond (id 47), (id 58)
set_bond stick_color, color16, (id 47), (id 58)

set_color color17,[159, 255, 0]
bond (id 48), (id 49)
set_bond stick_color, color17, (id 48), (id 49)

set_color color18,[0, 255, 0]
bond (id 48), (id 50)
set_bond stick_color, color18, (id 48), (id 50)

set_color color19,[255, 245, 0]
bond (id 50), (id 51)
set_bond stick_color, color19, (id 50), (id 51)

set_color color20,[242, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color20, (id 51), (id 52)

set_color color21,[234, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color21, (id 51), (id 53)

set_color color22,[238, 255, 0]
bond (id 51), (id 54)
set_bond stick_color, color22, (id 51), (id 54)

set_color color23,[254, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color23, (id 54), (id 55)

set_color color24,[252, 255, 0]
bond (id 54), (id 56)
set_bond stick_color, color24, (id 54), (id 56)

set_color color25,[252, 255, 0]
bond (id 54), (id 57)
set_bond stick_color, color25, (id 54), (id 57)

set_color color26,[207, 255, 0]
bond (id 58), (id 59)
set_bond stick_color, color26, (id 58), (id 59)

set_color color27,[191, 255, 0]
bond (id 58), (id 60)
set_bond stick_color, color27, (id 58), (id 60)

set_color color28,[255, 246, 0]
bond (id 58), (id 61)
set_bond stick_color, color28, (id 58), (id 61)

set_color color29,[255, 246, 0]
bond (id 63), (id 73)
set_bond stick_color, color29, (id 63), (id 73)

set_color color30,[255, 0, 0]
bond (id 73), (id 74)
set_bond stick_color, color30, (id 73), (id 74)

set_color color31,[255, 238, 0]
bond (id 73), (id 75)
set_bond stick_color, color31, (id 73), (id 75)

set_color color32,[255, 249, 0]
bond (id 73), (id 79)
set_bond stick_color, color32, (id 73), (id 79)

set_color color33,[245, 255, 0]
bond (id 75), (id 76)
set_bond stick_color, color33, (id 75), (id 76)

set_color color34,[255, 254, 0]
bond (id 75), (id 77)
set_bond stick_color, color34, (id 75), (id 77)

set_color color35,[255, 253, 0]
bond (id 75), (id 78)
set_bond stick_color, color35, (id 75), (id 78)

set_color color36,[245, 255, 0]
bond (id 79), (id 80)
set_bond stick_color, color36, (id 79), (id 80)

set_color color37,[223, 255, 0]
bond (id 79), (id 81)
set_bond stick_color, color37, (id 79), (id 81)

set_color color38,[255, 253, 0]
bond (id 79), (id 82)
set_bond stick_color, color38, (id 79), (id 82)

set_color color39,[255, 225, 0]
bond (id 1), (id 41)
set_bond stick_color, color39, (id 1), (id 41)

set_color color40,[255, 148, 0]
bond (id 1), (id 47)
set_bond stick_color, color40, (id 1), (id 47)

set_color color41,[255, 251, 0]
bond (id 2), (id 8)
set_bond stick_color, color41, (id 2), (id 8)

set_color color42,[240, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color42, (id 3), (id 7)

set_color color43,[255, 253, 0]
bond (id 3), (id 9)
set_bond stick_color, color43, (id 3), (id 9)

set_color color44,[255, 253, 0]
bond (id 4), (id 10)
set_bond stick_color, color44, (id 4), (id 10)

set_color color45,[255, 254, 0]
bond (id 4), (id 12)
set_bond stick_color, color45, (id 4), (id 12)

set_color color46,[255, 254, 0]
bond (id 5), (id 13)
set_bond stick_color, color46, (id 5), (id 13)

set_color color47,[249, 255, 0]
bond (id 8), (id 33)
set_bond stick_color, color47, (id 8), (id 33)

set_color color48,[255, 254, 0]
bond (id 9), (id 33)
set_bond stick_color, color48, (id 9), (id 33)

set_color color49,[237, 255, 0]
bond (id 12), (id 32)
set_bond stick_color, color49, (id 12), (id 32)

set_color color50,[235, 255, 0]
bond (id 13), (id 32)
set_bond stick_color, color50, (id 13), (id 32)

set_color color51,[255, 254, 0]
bond (id 38), (id 41)
set_bond stick_color, color51, (id 38), (id 41)

set_color color52,[255, 254, 0]
bond (id 38), (id 45)
set_bond stick_color, color52, (id 38), (id 45)

set_color color53,[255, 228, 0]
bond (id 1), (id 2)
set_bond stick_color, color53, (id 1), (id 2)

set_color color54,[255, 230, 0]
bond (id 1), (id 3)
set_bond stick_color, color54, (id 1), (id 3)

set_color color55,[255, 253, 0]
bond (id 1), (id 4)
set_bond stick_color, color55, (id 1), (id 4)

set_color color56,[210, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color56, (id 1), (id 5)


