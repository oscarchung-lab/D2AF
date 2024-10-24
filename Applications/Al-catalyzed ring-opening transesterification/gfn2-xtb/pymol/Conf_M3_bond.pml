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

set_color color1,[0, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[136, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)
set_color color3,[189, 255, 0]
bond (id 7), (id 15)
set_bond stick_color, color3, (id 7), (id 15)
set_color color4,[154, 255, 0]
bond (id 12), (id 22)
set_bond stick_color, color4, (id 12), (id 22)
set_color color5,[184, 255, 0]
bond (id 14), (id 24)
set_bond stick_color, color5, (id 14), (id 24)
set_color color6,[255, 244, 0]
bond (id 14), (id 25)
set_bond stick_color, color6, (id 14), (id 25)
set_color color7,[131, 255, 0]
bond (id 15), (id 26)
set_bond stick_color, color7, (id 15), (id 26)
set_color color8,[131, 255, 0]
bond (id 15), (id 27)
set_bond stick_color, color8, (id 15), (id 27)
set_color color9,[137, 255, 0]
bond (id 15), (id 28)
set_bond stick_color, color9, (id 15), (id 28)
set_color color10,[139, 255, 0]
bond (id 18), (id 31)
set_bond stick_color, color10, (id 18), (id 31)
set_color color11,[144, 255, 0]
bond (id 24), (id 38)
set_bond stick_color, color11, (id 24), (id 38)
set_color color12,[151, 255, 0]
bond (id 24), (id 39)
set_bond stick_color, color12, (id 24), (id 39)
set_color color13,[149, 255, 0]
bond (id 24), (id 40)
set_bond stick_color, color13, (id 24), (id 40)
set_color color14,[82, 255, 0]
bond (id 25), (id 41)
set_bond stick_color, color14, (id 25), (id 41)
set_color color15,[152, 255, 0]
bond (id 35), (id 48)
set_bond stick_color, color15, (id 35), (id 48)
set_color color16,[151, 255, 0]
bond (id 38), (id 49)
set_bond stick_color, color16, (id 38), (id 49)
set_color color17,[151, 255, 0]
bond (id 38), (id 50)
set_bond stick_color, color17, (id 38), (id 50)
set_color color18,[151, 255, 0]
bond (id 38), (id 51)
set_bond stick_color, color18, (id 38), (id 51)
set_color color19,[149, 255, 0]
bond (id 41), (id 52)
set_bond stick_color, color19, (id 41), (id 52)
set_color color20,[152, 255, 0]
bond (id 41), (id 53)
set_bond stick_color, color20, (id 41), (id 53)
set_color color21,[151, 255, 0]
bond (id 41), (id 54)
set_bond stick_color, color21, (id 41), (id 54)
set_color color22,[162, 255, 0]
bond (id 44), (id 56)
set_bond stick_color, color22, (id 44), (id 56)
set_color color23,[131, 255, 0]
bond (id 48), (id 57)
set_bond stick_color, color23, (id 48), (id 57)
set_color color24,[150, 255, 0]
bond (id 48), (id 58)
set_bond stick_color, color24, (id 48), (id 58)
set_color color25,[149, 255, 0]
bond (id 48), (id 59)
set_bond stick_color, color25, (id 48), (id 59)
set_color color26,[150, 255, 0]
bond (id 49), (id 52)
set_bond stick_color, color26, (id 49), (id 52)
set_color color27,[150, 255, 0]
bond (id 49), (id 60)
set_bond stick_color, color27, (id 49), (id 60)
set_color color28,[150, 255, 0]
bond (id 49), (id 61)
set_bond stick_color, color28, (id 49), (id 61)
set_color color29,[150, 255, 0]
bond (id 52), (id 62)
set_bond stick_color, color29, (id 52), (id 62)
set_color color30,[150, 255, 0]
bond (id 52), (id 63)
set_bond stick_color, color30, (id 52), (id 63)
set_color color31,[145, 255, 0]
bond (id 56), (id 57)
set_bond stick_color, color31, (id 56), (id 57)
set_color color32,[149, 255, 0]
bond (id 56), (id 64)
set_bond stick_color, color32, (id 56), (id 64)
set_color color33,[148, 255, 0]
bond (id 56), (id 65)
set_bond stick_color, color33, (id 56), (id 65)
set_color color34,[149, 255, 0]
bond (id 57), (id 66)
set_bond stick_color, color34, (id 57), (id 66)
set_color color35,[149, 255, 0]
bond (id 57), (id 67)
set_bond stick_color, color35, (id 57), (id 67)
set_color color36,[149, 255, 0]
bond (id 66), (id 68)
set_bond stick_color, color36, (id 66), (id 68)
set_color color37,[149, 255, 0]
bond (id 66), (id 69)
set_bond stick_color, color37, (id 66), (id 69)
set_color color38,[149, 255, 0]
bond (id 66), (id 70)
set_bond stick_color, color38, (id 66), (id 70)
set_color color39,[149, 255, 0]
bond (id 67), (id 71)
set_bond stick_color, color39, (id 67), (id 71)
set_color color40,[150, 255, 0]
bond (id 67), (id 72)
set_bond stick_color, color40, (id 67), (id 72)
set_color color41,[149, 255, 0]
bond (id 67), (id 73)
set_bond stick_color, color41, (id 67), (id 73)
set_color color42,[255, 115, 0]
bond (id 1), (id 7)
set_bond stick_color, color42, (id 1), (id 7)
set_color color43,[148, 255, 0]
bond (id 1), (id 35)
set_bond stick_color, color43, (id 1), (id 35)
set_color color44,[142, 255, 0]
bond (id 1), (id 44)
set_bond stick_color, color44, (id 1), (id 44)
set_color color45,[255, 35, 0]
bond (id 6), (id 14)
set_bond stick_color, color45, (id 6), (id 14)
set_color color46,[146, 255, 0]
bond (id 22), (id 35)
set_bond stick_color, color46, (id 22), (id 35)
set_color color47,[149, 255, 0]
bond (id 22), (id 36)
set_bond stick_color, color47, (id 22), (id 36)
set_color color48,[174, 255, 0]
bond (id 31), (id 44)
set_bond stick_color, color48, (id 31), (id 44)
set_color color49,[148, 255, 0]
bond (id 31), (id 45)
set_bond stick_color, color49, (id 31), (id 45)
set_color color50,[255, 237, 0]
bond (id 1), (id 6)
set_bond stick_color, color50, (id 1), (id 6)

