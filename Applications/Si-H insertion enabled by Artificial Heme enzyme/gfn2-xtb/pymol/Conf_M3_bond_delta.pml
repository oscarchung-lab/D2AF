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

set_color color1,[255, 253, 0]
bond (id 3), (id 9)
set_bond stick_color, color1, (id 3), (id 9)

set_color color2,[255, 254, 0]
bond (id 4), (id 12)
set_bond stick_color, color2, (id 4), (id 12)

set_color color3,[237, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color3, (id 6), (id 14)

set_color color4,[255, 254, 0]
bond (id 7), (id 15)
set_bond stick_color, color4, (id 7), (id 15)

set_color color5,[238, 255, 0]
bond (id 8), (id 16)
set_bond stick_color, color5, (id 8), (id 16)

set_color color6,[249, 255, 0]
bond (id 8), (id 33)
set_bond stick_color, color6, (id 8), (id 33)

set_color color7,[252, 255, 0]
bond (id 9), (id 17)
set_bond stick_color, color7, (id 9), (id 17)

set_color color8,[255, 254, 0]
bond (id 9), (id 33)
set_bond stick_color, color8, (id 9), (id 33)

set_color color9,[254, 255, 0]
bond (id 10), (id 18)
set_bond stick_color, color9, (id 10), (id 18)

set_color color10,[251, 255, 0]
bond (id 11), (id 19)
set_bond stick_color, color10, (id 11), (id 19)

set_color color11,[251, 255, 0]
bond (id 12), (id 20)
set_bond stick_color, color11, (id 12), (id 20)

set_color color12,[237, 255, 0]
bond (id 12), (id 32)
set_bond stick_color, color12, (id 12), (id 32)

set_color color13,[252, 255, 0]
bond (id 13), (id 21)
set_bond stick_color, color13, (id 13), (id 21)

set_color color14,[235, 255, 0]
bond (id 13), (id 32)
set_bond stick_color, color14, (id 13), (id 32)

set_color color15,[255, 253, 0]
bond (id 14), (id 16)
set_bond stick_color, color15, (id 14), (id 16)

set_color color16,[255, 254, 0]
bond (id 14), (id 22)
set_bond stick_color, color16, (id 14), (id 22)

set_color color17,[254, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color17, (id 15), (id 17)

set_color color18,[255, 254, 0]
bond (id 15), (id 23)
set_bond stick_color, color18, (id 15), (id 23)

set_color color19,[255, 254, 0]
bond (id 16), (id 24)
set_bond stick_color, color19, (id 16), (id 24)

set_color color20,[254, 255, 0]
bond (id 17), (id 25)
set_bond stick_color, color20, (id 17), (id 25)

set_color color21,[246, 255, 0]
bond (id 18), (id 20)
set_bond stick_color, color21, (id 18), (id 20)

set_color color22,[254, 255, 0]
bond (id 18), (id 26)
set_bond stick_color, color22, (id 18), (id 26)

set_color color23,[242, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color23, (id 19), (id 21)

set_color color24,[249, 255, 0]
bond (id 19), (id 27)
set_bond stick_color, color24, (id 19), (id 27)

set_color color25,[254, 255, 0]
bond (id 20), (id 28)
set_bond stick_color, color25, (id 20), (id 28)

set_color color26,[254, 255, 0]
bond (id 21), (id 29)
set_bond stick_color, color26, (id 21), (id 29)

set_color color27,[255, 254, 0]
bond (id 30), (id 34)
set_bond stick_color, color27, (id 30), (id 34)

set_color color28,[251, 255, 0]
bond (id 31), (id 35)
set_bond stick_color, color28, (id 31), (id 35)

set_color color29,[255, 254, 0]
bond (id 32), (id 36)
set_bond stick_color, color29, (id 32), (id 36)

set_color color30,[255, 254, 0]
bond (id 33), (id 37)
set_bond stick_color, color30, (id 33), (id 37)

set_color color31,[255, 254, 0]
bond (id 38), (id 42)
set_bond stick_color, color31, (id 38), (id 42)

set_color color32,[255, 254, 0]
bond (id 39), (id 40)
set_bond stick_color, color32, (id 39), (id 40)

set_color color33,[255, 254, 0]
bond (id 39), (id 41)
set_bond stick_color, color33, (id 39), (id 41)

set_color color34,[254, 255, 0]
bond (id 39), (id 44)
set_bond stick_color, color34, (id 39), (id 44)

set_color color35,[251, 255, 0]
bond (id 40), (id 42)
set_bond stick_color, color35, (id 40), (id 42)

set_color color36,[255, 254, 0]
bond (id 40), (id 43)
set_bond stick_color, color36, (id 40), (id 43)

set_color color37,[255, 254, 0]
bond (id 42), (id 46)
set_bond stick_color, color37, (id 42), (id 46)

set_color color38,[255, 206, 0]
bond (id 47), (id 48)
set_bond stick_color, color38, (id 47), (id 48)

set_color color39,[255, 231, 0]
bond (id 47), (id 58)
set_bond stick_color, color39, (id 47), (id 58)

set_color color40,[159, 255, 0]
bond (id 48), (id 49)
set_bond stick_color, color40, (id 48), (id 49)

set_color color41,[0, 255, 0]
bond (id 48), (id 50)
set_bond stick_color, color41, (id 48), (id 50)

set_color color42,[255, 245, 0]
bond (id 50), (id 51)
set_bond stick_color, color42, (id 50), (id 51)

set_color color43,[242, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color43, (id 51), (id 52)

set_color color44,[234, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color44, (id 51), (id 53)

set_color color45,[238, 255, 0]
bond (id 51), (id 54)
set_bond stick_color, color45, (id 51), (id 54)

set_color color46,[254, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color46, (id 54), (id 55)

set_color color47,[252, 255, 0]
bond (id 54), (id 56)
set_bond stick_color, color47, (id 54), (id 56)

set_color color48,[252, 255, 0]
bond (id 54), (id 57)
set_bond stick_color, color48, (id 54), (id 57)

set_color color49,[207, 255, 0]
bond (id 58), (id 59)
set_bond stick_color, color49, (id 58), (id 59)

set_color color50,[191, 255, 0]
bond (id 58), (id 60)
set_bond stick_color, color50, (id 58), (id 60)

set_color color51,[255, 246, 0]
bond (id 58), (id 61)
set_bond stick_color, color51, (id 58), (id 61)

set_color color52,[255, 246, 0]
bond (id 63), (id 73)
set_bond stick_color, color52, (id 63), (id 73)

set_color color53,[255, 0, 0]
bond (id 73), (id 74)
set_bond stick_color, color53, (id 73), (id 74)

set_color color54,[255, 238, 0]
bond (id 73), (id 75)
set_bond stick_color, color54, (id 73), (id 75)

set_color color55,[255, 249, 0]
bond (id 73), (id 79)
set_bond stick_color, color55, (id 73), (id 79)

set_color color56,[245, 255, 0]
bond (id 75), (id 76)
set_bond stick_color, color56, (id 75), (id 76)

set_color color57,[255, 254, 0]
bond (id 75), (id 77)
set_bond stick_color, color57, (id 75), (id 77)

set_color color58,[255, 253, 0]
bond (id 75), (id 78)
set_bond stick_color, color58, (id 75), (id 78)

set_color color59,[245, 255, 0]
bond (id 79), (id 80)
set_bond stick_color, color59, (id 79), (id 80)

set_color color60,[223, 255, 0]
bond (id 79), (id 81)
set_bond stick_color, color60, (id 79), (id 81)

set_color color61,[255, 253, 0]
bond (id 79), (id 82)
set_bond stick_color, color61, (id 79), (id 82)

set_color color62,[255, 148, 0]
bond (id 1), (id 47)
set_bond stick_color, color62, (id 1), (id 47)

set_color color63,[255, 254, 0]
bond (id 2), (id 6)
set_bond stick_color, color63, (id 2), (id 6)

set_color color64,[255, 251, 0]
bond (id 2), (id 8)
set_bond stick_color, color64, (id 2), (id 8)

set_color color65,[240, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color65, (id 3), (id 7)

set_color color66,[255, 253, 0]
bond (id 4), (id 10)
set_bond stick_color, color66, (id 4), (id 10)

set_color color67,[255, 253, 0]
bond (id 5), (id 11)
set_bond stick_color, color67, (id 5), (id 11)

set_color color68,[255, 254, 0]
bond (id 5), (id 13)
set_bond stick_color, color68, (id 5), (id 13)

set_color color69,[249, 255, 0]
bond (id 6), (id 30)
set_bond stick_color, color69, (id 6), (id 30)

set_color color70,[255, 254, 0]
bond (id 7), (id 31)
set_bond stick_color, color70, (id 7), (id 31)

set_color color71,[239, 255, 0]
bond (id 10), (id 30)
set_bond stick_color, color71, (id 10), (id 30)

set_color color72,[238, 255, 0]
bond (id 11), (id 31)
set_bond stick_color, color72, (id 11), (id 31)

set_color color73,[255, 254, 0]
bond (id 38), (id 41)
set_bond stick_color, color73, (id 38), (id 41)

set_color color74,[255, 254, 0]
bond (id 38), (id 45)
set_bond stick_color, color74, (id 38), (id 45)

set_color color75,[255, 228, 0]
bond (id 1), (id 2)
set_bond stick_color, color75, (id 1), (id 2)

set_color color76,[255, 230, 0]
bond (id 1), (id 3)
set_bond stick_color, color76, (id 1), (id 3)

set_color color77,[255, 253, 0]
bond (id 1), (id 4)
set_bond stick_color, color77, (id 1), (id 4)

set_color color78,[210, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color78, (id 1), (id 5)

set_color color79,[255, 225, 0]
bond (id 1), (id 41)
set_bond stick_color, color79, (id 1), (id 41)


