# Max change:      -0.01761431
# Min change:      -5.93542844

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[224, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[0, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[90, 255, 0]
bond (id 1), (id 18)
set_bond stick_color, color3, (id 1), (id 18)

set_color color4,[220, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color4, (id 1), (id 3)

set_color color5,[46, 255, 0]
bond (id 4), (id 7)
set_bond stick_color, color5, (id 4), (id 7)

set_color color6,[165, 255, 0]
bond (id 7), (id 8)
set_bond stick_color, color6, (id 7), (id 8)

set_color color7,[205, 255, 0]
bond (id 8), (id 10)
set_bond stick_color, color7, (id 8), (id 10)

set_color color8,[215, 255, 0]
bond (id 8), (id 11)
set_bond stick_color, color8, (id 8), (id 11)

set_color color9,[254, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color9, (id 8), (id 9)

set_color color10,[92, 255, 0]
bond (id 7), (id 12)
set_bond stick_color, color10, (id 7), (id 12)

set_color color11,[71, 255, 0]
bond (id 12), (id 15)
set_bond stick_color, color11, (id 12), (id 15)

set_color color12,[226, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color12, (id 15), (id 17)

set_color color13,[236, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color13, (id 15), (id 16)

set_color color14,[193, 255, 0]
bond (id 15), (id 18)
set_bond stick_color, color14, (id 15), (id 18)

set_color color15,[73, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color15, (id 18), (id 19)

set_color color16,[214, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color16, (id 19), (id 20)

set_color color17,[220, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color17, (id 19), (id 21)

set_color color18,[168, 255, 0]
bond (id 19), (id 22)
set_bond stick_color, color18, (id 19), (id 22)

set_color color19,[150, 255, 0]
bond (id 22), (id 27)
set_bond stick_color, color19, (id 22), (id 27)

set_color color20,[236, 255, 0]
bond (id 22), (id 23)
set_bond stick_color, color20, (id 22), (id 23)

set_color color21,[218, 255, 0]
bond (id 23), (id 25)
set_bond stick_color, color21, (id 23), (id 25)

set_color color22,[202, 255, 0]
bond (id 25), (id 31)
set_bond stick_color, color22, (id 25), (id 31)

set_color color23,[228, 255, 0]
bond (id 27), (id 29)
set_bond stick_color, color23, (id 27), (id 29)

set_color color24,[248, 255, 0]
bond (id 29), (id 31)
set_bond stick_color, color24, (id 29), (id 31)

set_color color25,[254, 255, 0]
bond (id 29), (id 30)
set_bond stick_color, color25, (id 29), (id 30)

set_color color26,[144, 255, 0]
bond (id 31), (id 32)
set_bond stick_color, color26, (id 31), (id 32)

set_color color27,[128, 255, 0]
bond (id 32), (id 33)
set_bond stick_color, color27, (id 32), (id 33)

set_color color28,[195, 255, 0]
bond (id 32), (id 34)
set_bond stick_color, color28, (id 32), (id 34)

set_color color29,[246, 255, 0]
bond (id 34), (id 35)
set_bond stick_color, color29, (id 34), (id 35)

set_color color30,[188, 255, 0]
bond (id 34), (id 36)
set_bond stick_color, color30, (id 34), (id 36)

set_color color31,[130, 255, 0]
bond (id 36), (id 39)
set_bond stick_color, color31, (id 36), (id 39)

set_color color32,[222, 255, 0]
bond (id 36), (id 37)
set_bond stick_color, color32, (id 36), (id 37)

set_color color33,[227, 255, 0]
bond (id 37), (id 48)
set_bond stick_color, color33, (id 37), (id 48)

set_color color34,[235, 255, 0]
bond (id 37), (id 38)
set_bond stick_color, color34, (id 37), (id 38)

set_color color35,[204, 255, 0]
bond (id 39), (id 40)
set_bond stick_color, color35, (id 39), (id 40)

set_color color36,[169, 255, 0]
bond (id 39), (id 41)
set_bond stick_color, color36, (id 39), (id 41)

set_color color37,[139, 255, 0]
bond (id 41), (id 43)
set_bond stick_color, color37, (id 41), (id 43)

set_color color38,[188, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color38, (id 43), (id 44)

set_color color39,[224, 255, 0]
bond (id 44), (id 45)
set_bond stick_color, color39, (id 44), (id 45)

set_color color40,[235, 255, 0]
bond (id 44), (id 46)
set_bond stick_color, color40, (id 44), (id 46)

set_color color41,[241, 255, 0]
bond (id 43), (id 48)
set_bond stick_color, color41, (id 43), (id 48)

set_color color42,[207, 255, 0]
bond (id 48), (id 49)
set_bond stick_color, color42, (id 48), (id 49)

set_color color43,[198, 255, 0]
bond (id 49), (id 51)
set_bond stick_color, color43, (id 49), (id 51)

set_color color44,[240, 255, 0]
bond (id 49), (id 50)
set_bond stick_color, color44, (id 49), (id 50)

set_color color45,[122, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color45, (id 51), (id 52)

set_color color46,[122, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color46, (id 51), (id 53)

set_color color47,[157, 255, 0]
bond (id 53), (id 54)
set_bond stick_color, color47, (id 53), (id 54)

set_color color48,[239, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color48, (id 54), (id 55)

set_color color49,[144, 255, 0]
bond (id 54), (id 56)
set_bond stick_color, color49, (id 54), (id 56)

set_color color50,[222, 255, 0]
bond (id 56), (id 57)
set_bond stick_color, color50, (id 56), (id 57)

set_color color51,[225, 255, 0]
bond (id 56), (id 58)
set_bond stick_color, color51, (id 56), (id 58)

set_color color52,[229, 255, 0]
bond (id 52), (id 58)
set_bond stick_color, color52, (id 52), (id 58)

set_color color53,[218, 255, 0]
bond (id 58), (id 59)
set_bond stick_color, color53, (id 58), (id 59)

set_color color54,[218, 255, 0]
bond (id 59), (id 60)
set_bond stick_color, color54, (id 59), (id 60)

set_color color55,[223, 255, 0]
bond (id 60), (id 61)
set_bond stick_color, color55, (id 60), (id 61)

set_color color56,[181, 255, 0]
bond (id 60), (id 62)
set_bond stick_color, color56, (id 60), (id 62)

set_color color57,[213, 255, 0]
bond (id 62), (id 63)
set_bond stick_color, color57, (id 62), (id 63)

set_color color58,[202, 255, 0]
bond (id 62), (id 64)
set_bond stick_color, color58, (id 62), (id 64)

set_color color59,[202, 255, 0]
bond (id 64), (id 66)
set_bond stick_color, color59, (id 64), (id 66)

set_color color60,[192, 255, 0]
bond (id 59), (id 67)
set_bond stick_color, color60, (id 59), (id 67)

set_color color61,[174, 255, 0]
bond (id 66), (id 67)
set_bond stick_color, color61, (id 66), (id 67)

set_color color62,[236, 255, 0]
bond (id 67), (id 68)
set_bond stick_color, color62, (id 67), (id 68)

