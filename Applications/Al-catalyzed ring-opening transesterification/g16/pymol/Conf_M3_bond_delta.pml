# Max change:       0.11531745
# Min change:      -0.15987237

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 7,id 14

# Adding a representation with the appropriate colorID for each bond

set_color color1,[214, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[247, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 252, 0]
bond (id 5), (id 12)
set_bond stick_color, color3, (id 5), (id 12)

set_color color4,[255, 207, 0]
bond (id 7), (id 15)
set_bond stick_color, color4, (id 7), (id 15)

set_color color5,[252, 255, 0]
bond (id 9), (id 18)
set_bond stick_color, color5, (id 9), (id 18)

set_color color6,[255, 251, 0]
bond (id 12), (id 22)
set_bond stick_color, color6, (id 12), (id 22)

set_color color7,[255, 254, 0]
bond (id 13), (id 23)
set_bond stick_color, color7, (id 13), (id 23)

set_color color8,[255, 216, 0]
bond (id 14), (id 24)
set_bond stick_color, color8, (id 14), (id 24)

set_color color9,[255, 169, 0]
bond (id 14), (id 25)
set_bond stick_color, color9, (id 14), (id 25)

set_color color10,[242, 255, 0]
bond (id 15), (id 26)
set_bond stick_color, color10, (id 15), (id 26)

set_color color11,[242, 255, 0]
bond (id 15), (id 27)
set_bond stick_color, color11, (id 15), (id 27)

set_color color12,[244, 255, 0]
bond (id 15), (id 28)
set_bond stick_color, color12, (id 15), (id 28)

set_color color13,[248, 255, 0]
bond (id 18), (id 31)
set_bond stick_color, color13, (id 18), (id 31)

set_color color14,[253, 255, 0]
bond (id 19), (id 32)
set_bond stick_color, color14, (id 19), (id 32)

set_color color15,[248, 255, 0]
bond (id 24), (id 38)
set_bond stick_color, color15, (id 24), (id 38)

set_color color16,[255, 251, 0]
bond (id 24), (id 39)
set_bond stick_color, color16, (id 24), (id 39)

set_color color17,[254, 255, 0]
bond (id 24), (id 40)
set_bond stick_color, color17, (id 24), (id 40)

set_color color18,[233, 255, 0]
bond (id 25), (id 41)
set_bond stick_color, color18, (id 25), (id 41)

set_color color19,[252, 255, 0]
bond (id 35), (id 48)
set_bond stick_color, color19, (id 35), (id 48)

set_color color20,[255, 248, 0]
bond (id 38), (id 49)
set_bond stick_color, color20, (id 38), (id 49)

set_color color21,[255, 252, 0]
bond (id 38), (id 50)
set_bond stick_color, color21, (id 38), (id 50)

set_color color22,[255, 253, 0]
bond (id 38), (id 51)
set_bond stick_color, color22, (id 38), (id 51)

set_color color23,[255, 247, 0]
bond (id 41), (id 52)
set_bond stick_color, color23, (id 41), (id 52)

set_color color24,[255, 249, 0]
bond (id 41), (id 53)
set_bond stick_color, color24, (id 41), (id 53)

set_color color25,[255, 252, 0]
bond (id 41), (id 54)
set_bond stick_color, color25, (id 41), (id 54)

set_color color26,[255, 248, 0]
bond (id 44), (id 56)
set_bond stick_color, color26, (id 44), (id 56)

set_color color27,[242, 255, 0]
bond (id 48), (id 57)
set_bond stick_color, color27, (id 48), (id 57)

set_color color28,[255, 253, 0]
bond (id 48), (id 58)
set_bond stick_color, color28, (id 48), (id 58)

set_color color29,[255, 254, 0]
bond (id 48), (id 59)
set_bond stick_color, color29, (id 48), (id 59)

set_color color30,[255, 252, 0]
bond (id 49), (id 52)
set_bond stick_color, color30, (id 49), (id 52)

set_color color31,[255, 253, 0]
bond (id 49), (id 60)
set_bond stick_color, color31, (id 49), (id 60)

set_color color32,[255, 253, 0]
bond (id 49), (id 61)
set_bond stick_color, color32, (id 49), (id 61)

set_color color33,[255, 253, 0]
bond (id 52), (id 62)
set_bond stick_color, color33, (id 52), (id 62)

set_color color34,[255, 254, 0]
bond (id 52), (id 63)
set_bond stick_color, color34, (id 52), (id 63)

set_color color35,[251, 255, 0]
bond (id 56), (id 57)
set_bond stick_color, color35, (id 56), (id 57)

set_color color36,[254, 255, 0]
bond (id 56), (id 64)
set_bond stick_color, color36, (id 56), (id 64)

set_color color37,[254, 255, 0]
bond (id 56), (id 65)
set_bond stick_color, color37, (id 56), (id 65)

set_color color38,[254, 255, 0]
bond (id 57), (id 66)
set_bond stick_color, color38, (id 57), (id 66)

set_color color39,[252, 255, 0]
bond (id 57), (id 67)
set_bond stick_color, color39, (id 57), (id 67)

set_color color40,[255, 254, 0]
bond (id 66), (id 68)
set_bond stick_color, color40, (id 66), (id 68)

set_color color41,[254, 255, 0]
bond (id 66), (id 69)
set_bond stick_color, color41, (id 66), (id 69)

set_color color42,[255, 254, 0]
bond (id 66), (id 70)
set_bond stick_color, color42, (id 66), (id 70)

set_color color43,[254, 255, 0]
bond (id 67), (id 71)
set_bond stick_color, color43, (id 67), (id 71)

set_color color44,[255, 254, 0]
bond (id 67), (id 72)
set_bond stick_color, color44, (id 67), (id 72)

set_color color45,[254, 255, 0]
bond (id 67), (id 73)
set_bond stick_color, color45, (id 67), (id 73)

set_color color46,[255, 0, 0]
bond (id 1), (id 7)
set_bond stick_color, color46, (id 1), (id 7)

set_color color47,[254, 255, 0]
bond (id 2), (id 4)
set_bond stick_color, color47, (id 2), (id 4)

set_color color48,[255, 251, 0]
bond (id 2), (id 5)
set_bond stick_color, color48, (id 2), (id 5)

set_color color49,[255, 250, 0]
bond (id 3), (id 8)
set_bond stick_color, color49, (id 3), (id 8)

set_color color50,[252, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color50, (id 3), (id 9)

set_color color51,[254, 255, 0]
bond (id 4), (id 10)
set_bond stick_color, color51, (id 4), (id 10)

set_color color52,[255, 253, 0]
bond (id 4), (id 11)
set_bond stick_color, color52, (id 4), (id 11)

set_color color53,[253, 255, 0]
bond (id 5), (id 13)
set_bond stick_color, color53, (id 5), (id 13)

set_color color54,[255, 130, 0]
bond (id 6), (id 14)
set_bond stick_color, color54, (id 6), (id 14)

set_color color55,[253, 255, 0]
bond (id 8), (id 16)
set_bond stick_color, color55, (id 8), (id 16)

set_color color56,[255, 254, 0]
bond (id 8), (id 17)
set_bond stick_color, color56, (id 8), (id 17)

set_color color57,[253, 255, 0]
bond (id 9), (id 19)
set_bond stick_color, color57, (id 9), (id 19)

set_color color58,[255, 253, 0]
bond (id 10), (id 13)
set_bond stick_color, color58, (id 10), (id 13)

set_color color59,[254, 255, 0]
bond (id 10), (id 20)
set_bond stick_color, color59, (id 10), (id 20)

set_color color60,[254, 255, 0]
bond (id 12), (id 21)
set_bond stick_color, color60, (id 12), (id 21)

set_color color61,[255, 252, 0]
bond (id 16), (id 19)
set_bond stick_color, color61, (id 16), (id 19)

set_color color62,[254, 255, 0]
bond (id 16), (id 29)
set_bond stick_color, color62, (id 16), (id 29)

set_color color63,[255, 252, 0]
bond (id 18), (id 30)
set_bond stick_color, color63, (id 18), (id 30)

set_color color64,[255, 254, 0]
bond (id 21), (id 33)
set_bond stick_color, color64, (id 21), (id 33)

set_color color65,[254, 255, 0]
bond (id 21), (id 34)
set_bond stick_color, color65, (id 21), (id 34)

set_color color66,[254, 255, 0]
bond (id 22), (id 35)
set_bond stick_color, color66, (id 22), (id 35)

set_color color67,[254, 255, 0]
bond (id 22), (id 36)
set_bond stick_color, color67, (id 22), (id 36)

set_color color68,[254, 255, 0]
bond (id 23), (id 33)
set_bond stick_color, color68, (id 23), (id 33)

set_color color69,[254, 255, 0]
bond (id 23), (id 37)
set_bond stick_color, color69, (id 23), (id 37)

set_color color70,[252, 255, 0]
bond (id 30), (id 42)
set_bond stick_color, color70, (id 30), (id 42)

set_color color71,[254, 255, 0]
bond (id 30), (id 43)
set_bond stick_color, color71, (id 30), (id 43)

set_color color72,[255, 247, 0]
bond (id 31), (id 44)
set_bond stick_color, color72, (id 31), (id 44)

set_color color73,[253, 255, 0]
bond (id 31), (id 45)
set_bond stick_color, color73, (id 31), (id 45)

set_color color74,[255, 250, 0]
bond (id 32), (id 42)
set_bond stick_color, color74, (id 32), (id 42)

set_color color75,[254, 255, 0]
bond (id 32), (id 46)
set_bond stick_color, color75, (id 32), (id 46)

set_color color76,[254, 255, 0]
bond (id 33), (id 47)
set_bond stick_color, color76, (id 33), (id 47)

set_color color77,[254, 255, 0]
bond (id 42), (id 55)
set_bond stick_color, color77, (id 42), (id 55)

set_color color78,[0, 255, 0]
bond (id 1), (id 6)
set_bond stick_color, color78, (id 1), (id 6)

set_color color79,[255, 254, 0]
bond (id 1), (id 35)
set_bond stick_color, color79, (id 1), (id 35)

set_color color80,[255, 212, 0]
bond (id 1), (id 44)
set_bond stick_color, color80, (id 1), (id 44)


