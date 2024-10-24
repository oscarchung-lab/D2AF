# Max change:      -0.00000092
# Min change:      -4.74919729

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 47,id 74

# Adding a representation with the appropriate colorID for each bond

set_color color1,[250, 255, 0]
bond (id 8), (id 16)
set_bond stick_color, color1, (id 8), (id 16)

set_color color2,[247, 255, 0]
bond (id 8), (id 33)
set_bond stick_color, color2, (id 8), (id 33)

set_color color3,[254, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color3, (id 3), (id 9)

set_color color4,[249, 255, 0]
bond (id 9), (id 33)
set_bond stick_color, color4, (id 9), (id 33)

set_color color5,[250, 255, 0]
bond (id 9), (id 17)
set_bond stick_color, color5, (id 9), (id 17)

set_color color6,[247, 255, 0]
bond (id 12), (id 20)
set_bond stick_color, color6, (id 12), (id 20)

set_color color7,[248, 255, 0]
bond (id 12), (id 32)
set_bond stick_color, color7, (id 12), (id 32)

set_color color8,[251, 255, 0]
bond (id 13), (id 21)
set_bond stick_color, color8, (id 13), (id 21)

set_color color9,[252, 255, 0]
bond (id 13), (id 32)
set_bond stick_color, color9, (id 13), (id 32)

set_color color10,[253, 255, 0]
bond (id 14), (id 16)
set_bond stick_color, color10, (id 14), (id 16)

set_color color11,[254, 255, 0]
bond (id 14), (id 22)
set_bond stick_color, color11, (id 14), (id 22)

set_color color12,[254, 255, 0]
bond (id 7), (id 15)
set_bond stick_color, color12, (id 7), (id 15)

set_color color13,[252, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color13, (id 15), (id 17)

set_color color14,[254, 255, 0]
bond (id 15), (id 23)
set_bond stick_color, color14, (id 15), (id 23)

set_color color15,[254, 255, 0]
bond (id 16), (id 24)
set_bond stick_color, color15, (id 16), (id 24)

set_color color16,[253, 255, 0]
bond (id 10), (id 18)
set_bond stick_color, color16, (id 10), (id 18)

set_color color17,[253, 255, 0]
bond (id 18), (id 20)
set_bond stick_color, color17, (id 18), (id 20)

set_color color18,[254, 255, 0]
bond (id 18), (id 26)
set_bond stick_color, color18, (id 18), (id 26)

set_color color19,[252, 255, 0]
bond (id 11), (id 19)
set_bond stick_color, color19, (id 11), (id 19)

set_color color20,[253, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color20, (id 19), (id 21)

set_color color21,[252, 255, 0]
bond (id 19), (id 27)
set_bond stick_color, color21, (id 19), (id 27)

set_color color22,[254, 255, 0]
bond (id 20), (id 28)
set_bond stick_color, color22, (id 20), (id 28)

set_color color23,[254, 255, 0]
bond (id 21), (id 29)
set_bond stick_color, color23, (id 21), (id 29)

set_color color24,[254, 255, 0]
bond (id 32), (id 36)
set_bond stick_color, color24, (id 32), (id 36)

set_color color25,[247, 255, 0]
bond (id 33), (id 37)
set_bond stick_color, color25, (id 33), (id 37)

set_color color26,[252, 255, 0]
bond (id 39), (id 40)
set_bond stick_color, color26, (id 39), (id 40)

set_color color27,[253, 255, 0]
bond (id 39), (id 44)
set_bond stick_color, color27, (id 39), (id 44)

set_color color28,[253, 255, 0]
bond (id 40), (id 42)
set_bond stick_color, color28, (id 40), (id 42)

set_color color29,[254, 255, 0]
bond (id 38), (id 42)
set_bond stick_color, color29, (id 38), (id 42)

set_color color30,[254, 255, 0]
bond (id 42), (id 46)
set_bond stick_color, color30, (id 42), (id 46)

set_color color31,[131, 255, 0]
bond (id 47), (id 48)
set_bond stick_color, color31, (id 47), (id 48)

set_color color32,[159, 255, 0]
bond (id 47), (id 58)
set_bond stick_color, color32, (id 47), (id 58)

set_color color33,[203, 255, 0]
bond (id 48), (id 49)
set_bond stick_color, color33, (id 48), (id 49)

set_color color34,[231, 255, 0]
bond (id 50), (id 51)
set_bond stick_color, color34, (id 50), (id 51)

set_color color35,[247, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color35, (id 51), (id 52)

set_color color36,[242, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color36, (id 51), (id 53)

set_color color37,[246, 255, 0]
bond (id 51), (id 54)
set_bond stick_color, color37, (id 51), (id 54)

set_color color38,[253, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color38, (id 54), (id 55)

set_color color39,[250, 255, 0]
bond (id 54), (id 57)
set_bond stick_color, color39, (id 54), (id 57)

set_color color40,[234, 255, 0]
bond (id 58), (id 60)
set_bond stick_color, color40, (id 58), (id 60)

set_color color41,[210, 255, 0]
bond (id 58), (id 61)
set_bond stick_color, color41, (id 58), (id 61)

set_color color42,[238, 255, 0]
bond (id 58), (id 59)
set_bond stick_color, color42, (id 58), (id 59)

set_color color43,[169, 255, 0]
bond (id 63), (id 73)
set_bond stick_color, color43, (id 63), (id 73)

set_color color44,[0, 255, 0]
bond (id 73), (id 75)
set_bond stick_color, color44, (id 73), (id 75)

set_color color45,[123, 255, 0]
bond (id 73), (id 79)
set_bond stick_color, color45, (id 73), (id 79)

set_color color46,[154, 255, 0]
bond (id 73), (id 74)
set_bond stick_color, color46, (id 73), (id 74)

set_color color47,[226, 255, 0]
bond (id 75), (id 77)
set_bond stick_color, color47, (id 75), (id 77)

set_color color48,[237, 255, 0]
bond (id 75), (id 78)
set_bond stick_color, color48, (id 75), (id 78)

set_color color49,[250, 255, 0]
bond (id 75), (id 76)
set_bond stick_color, color49, (id 75), (id 76)

set_color color50,[176, 255, 0]
bond (id 79), (id 80)
set_bond stick_color, color50, (id 79), (id 80)

set_color color51,[237, 255, 0]
bond (id 79), (id 81)
set_bond stick_color, color51, (id 79), (id 81)

set_color color52,[249, 255, 0]
bond (id 2), (id 6)
set_bond stick_color, color52, (id 2), (id 6)

set_color color53,[249, 255, 0]
bond (id 2), (id 8)
set_bond stick_color, color53, (id 2), (id 8)

set_color color54,[249, 255, 0]
bond (id 5), (id 11)
set_bond stick_color, color54, (id 5), (id 11)

set_color color55,[249, 255, 0]
bond (id 5), (id 13)
set_bond stick_color, color55, (id 5), (id 13)


