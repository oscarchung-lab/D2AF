# Max Energy:       5.54309465
# Min Energy:      -0.79565081
# median Energy:    2.37372192

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 7,id 14

# Adding a representation with the appropriate colorID for each bond

set_color color1,[163, 255, 0]
bond (id 14), (id 24)
set_bond stick_color, color1, (id 14), (id 24)
set_color color2,[120, 255, 0]
bond (id 14), (id 25)
set_bond stick_color, color2, (id 14), (id 25)
set_color color3,[132, 255, 0]
bond (id 7), (id 15)
set_bond stick_color, color3, (id 7), (id 15)
set_color color4,[135, 255, 0]
bond (id 15), (id 26)
set_bond stick_color, color4, (id 15), (id 26)
set_color color5,[120, 255, 0]
bond (id 15), (id 27)
set_bond stick_color, color5, (id 15), (id 27)
set_color color6,[139, 255, 0]
bond (id 15), (id 28)
set_bond stick_color, color6, (id 15), (id 28)
set_color color7,[141, 255, 0]
bond (id 24), (id 38)
set_bond stick_color, color7, (id 24), (id 38)
set_color color8,[183, 255, 0]
bond (id 24), (id 39)
set_bond stick_color, color8, (id 24), (id 39)
set_color color9,[155, 255, 0]
bond (id 24), (id 40)
set_bond stick_color, color9, (id 24), (id 40)
set_color color10,[131, 255, 0]
bond (id 25), (id 41)
set_bond stick_color, color10, (id 25), (id 41)
set_color color11,[151, 255, 0]
bond (id 38), (id 49)
set_bond stick_color, color11, (id 38), (id 49)
set_color color12,[146, 255, 0]
bond (id 38), (id 50)
set_bond stick_color, color12, (id 38), (id 50)
set_color color13,[150, 255, 0]
bond (id 38), (id 51)
set_bond stick_color, color13, (id 38), (id 51)
set_color color14,[151, 255, 0]
bond (id 41), (id 52)
set_bond stick_color, color14, (id 41), (id 52)
set_color color15,[147, 255, 0]
bond (id 41), (id 53)
set_bond stick_color, color15, (id 41), (id 53)
set_color color16,[146, 255, 0]
bond (id 41), (id 54)
set_bond stick_color, color16, (id 41), (id 54)
set_color color17,[232, 255, 0]
bond (id 35), (id 48)
set_bond stick_color, color17, (id 35), (id 48)
set_color color18,[235, 255, 0]
bond (id 48), (id 57)
set_bond stick_color, color18, (id 48), (id 57)
set_color color19,[151, 255, 0]
bond (id 48), (id 58)
set_bond stick_color, color19, (id 48), (id 58)
set_color color20,[148, 255, 0]
bond (id 48), (id 59)
set_bond stick_color, color20, (id 48), (id 59)
set_color color21,[152, 255, 0]
bond (id 49), (id 52)
set_bond stick_color, color21, (id 49), (id 52)
set_color color22,[150, 255, 0]
bond (id 49), (id 60)
set_bond stick_color, color22, (id 49), (id 60)
set_color color23,[151, 255, 0]
bond (id 49), (id 61)
set_bond stick_color, color23, (id 49), (id 61)
set_color color24,[144, 255, 0]
bond (id 52), (id 62)
set_bond stick_color, color24, (id 52), (id 62)
set_color color25,[152, 255, 0]
bond (id 52), (id 63)
set_bond stick_color, color25, (id 52), (id 63)
set_color color26,[149, 255, 0]
bond (id 44), (id 56)
set_bond stick_color, color26, (id 44), (id 56)
set_color color27,[137, 255, 0]
bond (id 56), (id 57)
set_bond stick_color, color27, (id 56), (id 57)
set_color color28,[156, 255, 0]
bond (id 56), (id 64)
set_bond stick_color, color28, (id 56), (id 64)
set_color color29,[147, 255, 0]
bond (id 56), (id 65)
set_bond stick_color, color29, (id 56), (id 65)
set_color color30,[150, 255, 0]
bond (id 57), (id 66)
set_bond stick_color, color30, (id 57), (id 66)
set_color color31,[140, 255, 0]
bond (id 57), (id 67)
set_bond stick_color, color31, (id 57), (id 67)
set_color color32,[150, 255, 0]
bond (id 66), (id 68)
set_bond stick_color, color32, (id 66), (id 68)
set_color color33,[151, 255, 0]
bond (id 66), (id 69)
set_bond stick_color, color33, (id 66), (id 69)
set_color color34,[150, 255, 0]
bond (id 66), (id 70)
set_bond stick_color, color34, (id 66), (id 70)
set_color color35,[150, 255, 0]
bond (id 67), (id 71)
set_bond stick_color, color35, (id 67), (id 71)
set_color color36,[149, 255, 0]
bond (id 67), (id 72)
set_bond stick_color, color36, (id 67), (id 72)
set_color color37,[149, 255, 0]
bond (id 67), (id 73)
set_bond stick_color, color37, (id 67), (id 73)
set_color color38,[199, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color38, (id 1), (id 2)
set_color color39,[255, 212, 0]
bond (id 1), (id 3)
set_bond stick_color, color39, (id 1), (id 3)
set_color color40,[255, 126, 0]
bond (id 1), (id 7)
set_bond stick_color, color40, (id 1), (id 7)
set_color color41,[191, 255, 0]
bond (id 1), (id 44)
set_bond stick_color, color41, (id 1), (id 44)
set_color color42,[199, 255, 0]
bond (id 1), (id 35)
set_bond stick_color, color42, (id 1), (id 35)
set_color color43,[148, 255, 0]
bond (id 22), (id 35)
set_bond stick_color, color43, (id 22), (id 35)
set_color color44,[148, 255, 0]
bond (id 22), (id 36)
set_bond stick_color, color44, (id 22), (id 36)
set_color color45,[150, 255, 0]
bond (id 31), (id 44)
set_bond stick_color, color45, (id 31), (id 44)
set_color color46,[150, 255, 0]
bond (id 31), (id 45)
set_bond stick_color, color46, (id 31), (id 45)
set_color color47,[255, 151, 0]
bond (id 1), (id 6)
set_bond stick_color, color47, (id 1), (id 6)

