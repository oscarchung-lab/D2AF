# Max change:       0.55812249
# Min change:      -0.03818547

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 247, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 239, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 192, 0]
bond (id 1), (id 6)
set_bond stick_color, color3, (id 1), (id 6)

set_color color4,[255, 254, 0]
bond (id 2), (id 4)
set_bond stick_color, color4, (id 2), (id 4)

set_color color5,[255, 254, 0]
bond (id 2), (id 5)
set_bond stick_color, color5, (id 2), (id 5)

set_color color6,[159, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color6, (id 3), (id 9)

set_color color7,[190, 255, 0]
bond (id 3), (id 10)
set_bond stick_color, color7, (id 3), (id 10)

set_color color8,[255, 254, 0]
bond (id 4), (id 11)
set_bond stick_color, color8, (id 4), (id 11)

set_color color9,[255, 252, 0]
bond (id 5), (id 12)
set_bond stick_color, color9, (id 5), (id 12)

set_color color10,[255, 253, 0]
bond (id 6), (id 13)
set_bond stick_color, color10, (id 6), (id 13)

set_color color11,[201, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color11, (id 6), (id 14)

set_color color12,[253, 255, 0]
bond (id 7), (id 15)
set_bond stick_color, color12, (id 7), (id 15)

set_color color13,[248, 255, 0]
bond (id 7), (id 16)
set_bond stick_color, color13, (id 7), (id 16)

set_color color14,[233, 255, 0]
bond (id 8), (id 17)
set_bond stick_color, color14, (id 8), (id 17)

set_color color15,[239, 255, 0]
bond (id 8), (id 18)
set_bond stick_color, color15, (id 8), (id 18)

set_color color16,[255, 253, 0]
bond (id 9), (id 19)
set_bond stick_color, color16, (id 9), (id 19)

set_color color17,[255, 253, 0]
bond (id 10), (id 20)
set_bond stick_color, color17, (id 10), (id 20)

set_color color18,[235, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color18, (id 11), (id 12)

set_color color19,[226, 255, 0]
bond (id 11), (id 21)
set_bond stick_color, color19, (id 11), (id 21)

set_color color20,[255, 254, 0]
bond (id 11), (id 22)
set_bond stick_color, color20, (id 11), (id 22)

set_color color21,[245, 255, 0]
bond (id 12), (id 23)
set_bond stick_color, color21, (id 12), (id 23)

set_color color22,[255, 254, 0]
bond (id 12), (id 24)
set_bond stick_color, color22, (id 12), (id 24)

set_color color23,[255, 252, 0]
bond (id 13), (id 25)
set_bond stick_color, color23, (id 13), (id 25)

set_color color24,[255, 254, 0]
bond (id 14), (id 26)
set_bond stick_color, color24, (id 14), (id 26)

set_color color25,[236, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color25, (id 15), (id 17)

set_color color26,[255, 254, 0]
bond (id 15), (id 27)
set_bond stick_color, color26, (id 15), (id 27)

set_color color27,[246, 255, 0]
bond (id 16), (id 28)
set_bond stick_color, color27, (id 16), (id 28)

set_color color28,[252, 255, 0]
bond (id 16), (id 29)
set_bond stick_color, color28, (id 16), (id 29)

set_color color29,[255, 254, 0]
bond (id 17), (id 30)
set_bond stick_color, color29, (id 17), (id 30)

set_color color30,[247, 255, 0]
bond (id 18), (id 31)
set_bond stick_color, color30, (id 18), (id 31)

set_color color31,[242, 255, 0]
bond (id 18), (id 32)
set_bond stick_color, color31, (id 18), (id 32)

set_color color32,[245, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color32, (id 19), (id 20)

set_color color33,[249, 255, 0]
bond (id 19), (id 33)
set_bond stick_color, color33, (id 19), (id 33)

set_color color34,[248, 255, 0]
bond (id 19), (id 34)
set_bond stick_color, color34, (id 19), (id 34)

set_color color35,[231, 255, 0]
bond (id 20), (id 35)
set_bond stick_color, color35, (id 20), (id 35)

set_color color36,[255, 254, 0]
bond (id 20), (id 36)
set_bond stick_color, color36, (id 20), (id 36)

set_color color37,[240, 255, 0]
bond (id 25), (id 26)
set_bond stick_color, color37, (id 25), (id 26)

set_color color38,[238, 255, 0]
bond (id 25), (id 37)
set_bond stick_color, color38, (id 25), (id 37)

set_color color39,[255, 254, 0]
bond (id 25), (id 38)
set_bond stick_color, color39, (id 25), (id 38)

set_color color40,[250, 255, 0]
bond (id 26), (id 39)
set_bond stick_color, color40, (id 26), (id 39)

set_color color41,[247, 255, 0]
bond (id 26), (id 40)
set_bond stick_color, color41, (id 26), (id 40)

set_color color42,[241, 255, 0]
bond (id 27), (id 41)
set_bond stick_color, color42, (id 27), (id 41)

set_color color43,[250, 255, 0]
bond (id 27), (id 42)
set_bond stick_color, color43, (id 27), (id 42)

set_color color44,[249, 255, 0]
bond (id 28), (id 41)
set_bond stick_color, color44, (id 28), (id 41)

set_color color45,[254, 255, 0]
bond (id 28), (id 43)
set_bond stick_color, color45, (id 28), (id 43)

set_color color46,[244, 255, 0]
bond (id 30), (id 44)
set_bond stick_color, color46, (id 30), (id 44)

set_color color47,[251, 255, 0]
bond (id 30), (id 45)
set_bond stick_color, color47, (id 30), (id 45)

set_color color48,[255, 254, 0]
bond (id 31), (id 44)
set_bond stick_color, color48, (id 31), (id 44)

set_color color49,[254, 255, 0]
bond (id 31), (id 46)
set_bond stick_color, color49, (id 31), (id 46)

set_color color50,[254, 255, 0]
bond (id 41), (id 47)
set_bond stick_color, color50, (id 41), (id 47)

set_color color51,[254, 255, 0]
bond (id 44), (id 48)
set_bond stick_color, color51, (id 44), (id 48)

set_color color52,[255, 247, 0]
bond (id 49), (id 50)
set_bond stick_color, color52, (id 49), (id 50)

set_color color53,[255, 251, 0]
bond (id 49), (id 51)
set_bond stick_color, color53, (id 49), (id 51)

set_color color54,[255, 0, 0]
bond (id 49), (id 52)
set_bond stick_color, color54, (id 49), (id 52)

set_color color55,[229, 255, 0]
bond (id 50), (id 53)
set_bond stick_color, color55, (id 50), (id 53)

set_color color56,[255, 254, 0]
bond (id 50), (id 54)
set_bond stick_color, color56, (id 50), (id 54)

set_color color57,[213, 255, 0]
bond (id 51), (id 55)
set_bond stick_color, color57, (id 51), (id 55)

set_color color58,[255, 252, 0]
bond (id 51), (id 56)
set_bond stick_color, color58, (id 51), (id 56)

set_color color59,[255, 253, 0]
bond (id 53), (id 55)
set_bond stick_color, color59, (id 53), (id 55)

set_color color60,[255, 254, 0]
bond (id 53), (id 57)
set_bond stick_color, color60, (id 53), (id 57)

set_color color61,[255, 254, 0]
bond (id 55), (id 58)
set_bond stick_color, color61, (id 55), (id 58)

set_color color62,[255, 254, 0]
bond (id 57), (id 59)
set_bond stick_color, color62, (id 57), (id 59)

set_color color63,[255, 254, 0]
bond (id 57), (id 60)
set_bond stick_color, color63, (id 57), (id 60)

set_color color64,[255, 254, 0]
bond (id 58), (id 61)
set_bond stick_color, color64, (id 58), (id 61)

set_color color65,[255, 254, 0]
bond (id 58), (id 62)
set_bond stick_color, color65, (id 58), (id 62)

set_color color66,[255, 254, 0]
bond (id 59), (id 61)
set_bond stick_color, color66, (id 59), (id 61)

set_color color67,[255, 254, 0]
bond (id 59), (id 63)
set_bond stick_color, color67, (id 59), (id 63)

set_color color68,[255, 254, 0]
bond (id 61), (id 64)
set_bond stick_color, color68, (id 61), (id 64)

set_color color69,[0, 255, 0]
bond (id 1), (id 7)
set_bond stick_color, color69, (id 1), (id 7)

set_color color70,[207, 255, 0]
bond (id 1), (id 8)
set_bond stick_color, color70, (id 1), (id 8)


