# Max Energy:       6.24990924
# Min Energy:      -0.84728189
# median Energy:    2.70131368

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 47,id 74

# Adding a representation with the appropriate colorID for each bond

set_color color1,[147, 255, 0]
bond (id 2), (id 6)
set_bond stick_color, color1, (id 2), (id 6)
set_color color2,[150, 255, 0]
bond (id 5), (id 11)
set_bond stick_color, color2, (id 5), (id 11)
set_color color3,[154, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color3, (id 6), (id 14)
set_color color4,[151, 255, 0]
bond (id 7), (id 15)
set_bond stick_color, color4, (id 7), (id 15)
set_color color5,[149, 255, 0]
bond (id 7), (id 31)
set_bond stick_color, color5, (id 7), (id 31)
set_color color6,[170, 255, 0]
bond (id 8), (id 16)
set_bond stick_color, color6, (id 8), (id 16)
set_color color7,[146, 255, 0]
bond (id 9), (id 17)
set_bond stick_color, color7, (id 9), (id 17)
set_color color8,[148, 255, 0]
bond (id 10), (id 18)
set_bond stick_color, color8, (id 10), (id 18)
set_color color9,[146, 255, 0]
bond (id 10), (id 30)
set_bond stick_color, color9, (id 10), (id 30)
set_color color10,[149, 255, 0]
bond (id 11), (id 19)
set_bond stick_color, color10, (id 11), (id 19)
set_color color11,[148, 255, 0]
bond (id 12), (id 20)
set_bond stick_color, color11, (id 12), (id 20)
set_color color12,[146, 255, 0]
bond (id 13), (id 21)
set_bond stick_color, color12, (id 13), (id 21)
set_color color13,[149, 255, 0]
bond (id 32), (id 36)
set_bond stick_color, color13, (id 32), (id 36)
set_color color14,[149, 255, 0]
bond (id 33), (id 37)
set_bond stick_color, color14, (id 33), (id 37)
set_color color15,[255, 214, 0]
bond (id 47), (id 48)
set_bond stick_color, color15, (id 47), (id 48)
set_color color16,[201, 255, 0]
bond (id 47), (id 58)
set_bond stick_color, color16, (id 47), (id 58)
set_color color17,[106, 255, 0]
bond (id 48), (id 49)
set_bond stick_color, color17, (id 48), (id 49)
set_color color18,[49, 255, 0]
bond (id 48), (id 50)
set_bond stick_color, color18, (id 48), (id 50)
set_color color19,[158, 255, 0]
bond (id 50), (id 51)
set_bond stick_color, color19, (id 50), (id 51)
set_color color20,[149, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color20, (id 51), (id 52)
set_color color21,[149, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color21, (id 51), (id 53)
set_color color22,[150, 255, 0]
bond (id 51), (id 54)
set_bond stick_color, color22, (id 51), (id 54)
set_color color23,[149, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color23, (id 54), (id 55)
set_color color24,[149, 255, 0]
bond (id 54), (id 56)
set_bond stick_color, color24, (id 54), (id 56)
set_color color25,[149, 255, 0]
bond (id 54), (id 57)
set_bond stick_color, color25, (id 54), (id 57)
set_color color26,[146, 255, 0]
bond (id 58), (id 59)
set_bond stick_color, color26, (id 58), (id 59)
set_color color27,[147, 255, 0]
bond (id 58), (id 60)
set_bond stick_color, color27, (id 58), (id 60)
set_color color28,[151, 255, 0]
bond (id 58), (id 61)
set_bond stick_color, color28, (id 58), (id 61)
set_color color29,[155, 255, 0]
bond (id 63), (id 73)
set_bond stick_color, color29, (id 63), (id 73)
set_color color30,[255, 10, 0]
bond (id 73), (id 74)
set_bond stick_color, color30, (id 73), (id 74)
set_color color31,[162, 255, 0]
bond (id 73), (id 75)
set_bond stick_color, color31, (id 73), (id 75)
set_color color32,[153, 255, 0]
bond (id 73), (id 79)
set_bond stick_color, color32, (id 73), (id 79)
set_color color33,[149, 255, 0]
bond (id 75), (id 76)
set_bond stick_color, color33, (id 75), (id 76)
set_color color34,[149, 255, 0]
bond (id 75), (id 77)
set_bond stick_color, color34, (id 75), (id 77)
set_color color35,[150, 255, 0]
bond (id 75), (id 78)
set_bond stick_color, color35, (id 75), (id 78)
set_color color36,[149, 255, 0]
bond (id 79), (id 80)
set_bond stick_color, color36, (id 79), (id 80)
set_color color37,[148, 255, 0]
bond (id 79), (id 81)
set_bond stick_color, color37, (id 79), (id 81)
set_color color38,[150, 255, 0]
bond (id 79), (id 82)
set_bond stick_color, color38, (id 79), (id 82)
set_color color39,[170, 255, 0]
bond (id 1), (id 41)
set_bond stick_color, color39, (id 1), (id 41)
set_color color40,[255, 97, 0]
bond (id 1), (id 47)
set_bond stick_color, color40, (id 1), (id 47)
set_color color41,[174, 255, 0]
bond (id 2), (id 8)
set_bond stick_color, color41, (id 2), (id 8)
set_color color42,[143, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color42, (id 3), (id 7)
set_color color43,[143, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color43, (id 3), (id 9)
set_color color44,[148, 255, 0]
bond (id 4), (id 10)
set_bond stick_color, color44, (id 4), (id 10)
set_color color45,[152, 255, 0]
bond (id 4), (id 12)
set_bond stick_color, color45, (id 4), (id 12)
set_color color46,[149, 255, 0]
bond (id 5), (id 13)
set_bond stick_color, color46, (id 5), (id 13)
set_color color47,[148, 255, 0]
bond (id 8), (id 33)
set_bond stick_color, color47, (id 8), (id 33)
set_color color48,[149, 255, 0]
bond (id 9), (id 33)
set_bond stick_color, color48, (id 9), (id 33)
set_color color49,[148, 255, 0]
bond (id 12), (id 32)
set_bond stick_color, color49, (id 12), (id 32)
set_color color50,[152, 255, 0]
bond (id 13), (id 32)
set_bond stick_color, color50, (id 13), (id 32)
set_color color51,[148, 255, 0]
bond (id 38), (id 41)
set_bond stick_color, color51, (id 38), (id 41)
set_color color52,[149, 255, 0]
bond (id 38), (id 45)
set_bond stick_color, color52, (id 38), (id 45)
set_color color53,[205, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color53, (id 1), (id 2)
set_color color54,[127, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color54, (id 1), (id 3)
set_color color55,[148, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color55, (id 1), (id 4)
set_color color56,[142, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color56, (id 1), (id 5)

