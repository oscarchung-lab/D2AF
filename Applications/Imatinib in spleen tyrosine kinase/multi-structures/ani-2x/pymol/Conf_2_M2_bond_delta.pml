# Max change:       0.04862388
# Min change:      -0.07765124

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_2.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 251, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 253, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 162, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)

set_color color4,[213, 255, 0]
bond (id 1), (id 18)
set_bond stick_color, color4, (id 1), (id 18)

set_color color5,[247, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color5, (id 4), (id 5)

set_color color6,[237, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color6, (id 4), (id 6)

set_color color7,[225, 255, 0]
bond (id 4), (id 7)
set_bond stick_color, color7, (id 4), (id 7)

set_color color8,[238, 255, 0]
bond (id 7), (id 8)
set_bond stick_color, color8, (id 7), (id 8)

set_color color9,[232, 255, 0]
bond (id 7), (id 12)
set_bond stick_color, color9, (id 7), (id 12)

set_color color10,[238, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color10, (id 8), (id 9)

set_color color11,[255, 237, 0]
bond (id 8), (id 10)
set_bond stick_color, color11, (id 8), (id 10)

set_color color12,[255, 252, 0]
bond (id 8), (id 11)
set_bond stick_color, color12, (id 8), (id 11)

set_color color13,[251, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color13, (id 12), (id 13)

set_color color14,[231, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color14, (id 12), (id 14)

set_color color15,[255, 185, 0]
bond (id 12), (id 15)
set_bond stick_color, color15, (id 12), (id 15)

set_color color16,[253, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color16, (id 15), (id 16)

set_color color17,[255, 250, 0]
bond (id 15), (id 17)
set_bond stick_color, color17, (id 15), (id 17)

set_color color18,[211, 255, 0]
bond (id 15), (id 18)
set_bond stick_color, color18, (id 15), (id 18)

set_color color19,[211, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color19, (id 18), (id 19)

set_color color20,[233, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color20, (id 19), (id 20)

set_color color21,[255, 252, 0]
bond (id 19), (id 21)
set_bond stick_color, color21, (id 19), (id 21)

set_color color22,[255, 183, 0]
bond (id 19), (id 22)
set_bond stick_color, color22, (id 19), (id 22)

set_color color23,[255, 254, 0]
bond (id 22), (id 23)
set_bond stick_color, color23, (id 22), (id 23)

set_color color24,[255, 254, 0]
bond (id 22), (id 27)
set_bond stick_color, color24, (id 22), (id 27)

set_color color25,[235, 255, 0]
bond (id 23), (id 24)
set_bond stick_color, color25, (id 23), (id 24)

set_color color26,[247, 255, 0]
bond (id 23), (id 25)
set_bond stick_color, color26, (id 23), (id 25)

set_color color27,[247, 255, 0]
bond (id 25), (id 26)
set_bond stick_color, color27, (id 25), (id 26)

set_color color28,[254, 255, 0]
bond (id 25), (id 31)
set_bond stick_color, color28, (id 25), (id 31)

set_color color29,[253, 255, 0]
bond (id 27), (id 28)
set_bond stick_color, color29, (id 27), (id 28)

set_color color30,[255, 239, 0]
bond (id 27), (id 29)
set_bond stick_color, color30, (id 27), (id 29)

set_color color31,[239, 255, 0]
bond (id 29), (id 30)
set_bond stick_color, color31, (id 29), (id 30)

set_color color32,[255, 245, 0]
bond (id 29), (id 31)
set_bond stick_color, color32, (id 29), (id 31)

set_color color33,[255, 215, 0]
bond (id 31), (id 32)
set_bond stick_color, color33, (id 31), (id 32)

set_color color34,[255, 253, 0]
bond (id 32), (id 33)
set_bond stick_color, color34, (id 32), (id 33)

set_color color35,[255, 254, 0]
bond (id 32), (id 34)
set_bond stick_color, color35, (id 32), (id 34)

set_color color36,[245, 255, 0]
bond (id 34), (id 35)
set_bond stick_color, color36, (id 34), (id 35)

set_color color37,[255, 238, 0]
bond (id 34), (id 36)
set_bond stick_color, color37, (id 34), (id 36)

set_color color38,[255, 242, 0]
bond (id 36), (id 37)
set_bond stick_color, color38, (id 36), (id 37)

set_color color39,[252, 255, 0]
bond (id 36), (id 39)
set_bond stick_color, color39, (id 36), (id 39)

set_color color40,[255, 245, 0]
bond (id 37), (id 38)
set_bond stick_color, color40, (id 37), (id 38)

set_color color41,[255, 210, 0]
bond (id 37), (id 48)
set_bond stick_color, color41, (id 37), (id 48)

set_color color42,[247, 255, 0]
bond (id 39), (id 40)
set_bond stick_color, color42, (id 39), (id 40)

set_color color43,[255, 252, 0]
bond (id 39), (id 41)
set_bond stick_color, color43, (id 39), (id 41)

set_color color44,[255, 245, 0]
bond (id 41), (id 42)
set_bond stick_color, color44, (id 41), (id 42)

set_color color45,[255, 244, 0]
bond (id 41), (id 43)
set_bond stick_color, color45, (id 41), (id 43)

set_color color46,[255, 236, 0]
bond (id 43), (id 44)
set_bond stick_color, color46, (id 43), (id 44)

set_color color47,[255, 250, 0]
bond (id 43), (id 48)
set_bond stick_color, color47, (id 43), (id 48)

set_color color48,[255, 250, 0]
bond (id 44), (id 45)
set_bond stick_color, color48, (id 44), (id 45)

set_color color49,[244, 255, 0]
bond (id 44), (id 46)
set_bond stick_color, color49, (id 44), (id 46)

set_color color50,[240, 255, 0]
bond (id 44), (id 47)
set_bond stick_color, color50, (id 44), (id 47)

set_color color51,[255, 205, 0]
bond (id 48), (id 49)
set_bond stick_color, color51, (id 48), (id 49)

set_color color52,[255, 225, 0]
bond (id 49), (id 50)
set_bond stick_color, color52, (id 49), (id 50)

set_color color53,[255, 229, 0]
bond (id 49), (id 51)
set_bond stick_color, color53, (id 49), (id 51)

set_color color54,[255, 220, 0]
bond (id 51), (id 52)
set_bond stick_color, color54, (id 51), (id 52)

set_color color55,[235, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color55, (id 51), (id 53)

set_color color56,[255, 224, 0]
bond (id 52), (id 58)
set_bond stick_color, color56, (id 52), (id 58)

set_color color57,[255, 193, 0]
bond (id 53), (id 54)
set_bond stick_color, color57, (id 53), (id 54)

set_color color58,[235, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color58, (id 54), (id 55)

set_color color59,[235, 255, 0]
bond (id 54), (id 56)
set_bond stick_color, color59, (id 54), (id 56)

set_color color60,[248, 255, 0]
bond (id 56), (id 57)
set_bond stick_color, color60, (id 56), (id 57)

set_color color61,[255, 212, 0]
bond (id 56), (id 58)
set_bond stick_color, color61, (id 56), (id 58)

set_color color62,[231, 255, 0]
bond (id 58), (id 59)
set_bond stick_color, color62, (id 58), (id 59)

set_color color63,[241, 255, 0]
bond (id 59), (id 60)
set_bond stick_color, color63, (id 59), (id 60)

set_color color64,[255, 232, 0]
bond (id 59), (id 67)
set_bond stick_color, color64, (id 59), (id 67)

set_color color65,[251, 255, 0]
bond (id 60), (id 61)
set_bond stick_color, color65, (id 60), (id 61)

set_color color66,[255, 239, 0]
bond (id 60), (id 62)
set_bond stick_color, color66, (id 60), (id 62)

set_color color67,[241, 255, 0]
bond (id 62), (id 63)
set_bond stick_color, color67, (id 62), (id 63)

set_color color68,[255, 248, 0]
bond (id 62), (id 64)
set_bond stick_color, color68, (id 62), (id 64)

set_color color69,[232, 255, 0]
bond (id 64), (id 65)
set_bond stick_color, color69, (id 64), (id 65)

set_color color70,[255, 211, 0]
bond (id 64), (id 66)
set_bond stick_color, color70, (id 64), (id 66)

set_color color71,[251, 255, 0]
bond (id 66), (id 67)
set_bond stick_color, color71, (id 66), (id 67)

set_color color72,[245, 255, 0]
bond (id 67), (id 68)
set_bond stick_color, color72, (id 67), (id 68)


