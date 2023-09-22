# Max Energy:      28.70392695
# Min Energy:      -2.19773746
# median Energy:   13.25309475

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[197, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[178, 255, 0]
bond (id 1), (id 8)
set_bond stick_color, color2, (id 1), (id 8)
set_color color3,[182, 255, 0]
bond (id 1), (id 19)
set_bond stick_color, color3, (id 1), (id 19)
set_color color4,[179, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)
set_color color5,[176, 255, 0]
bond (id 2), (id 7)
set_bond stick_color, color5, (id 2), (id 7)
set_color color6,[171, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color6, (id 3), (id 4)
set_color color7,[167, 255, 0]
bond (id 3), (id 5)
set_bond stick_color, color7, (id 3), (id 5)
set_color color8,[168, 255, 0]
bond (id 3), (id 6)
set_bond stick_color, color8, (id 3), (id 6)
set_color color9,[191, 255, 0]
bond (id 20), (id 24)
set_bond stick_color, color9, (id 20), (id 24)
set_color color10,[212, 255, 0]
bond (id 20), (id 63)
set_bond stick_color, color10, (id 20), (id 63)
set_color color11,[173, 255, 0]
bond (id 21), (id 35)
set_bond stick_color, color11, (id 21), (id 35)
set_color color12,[175, 255, 0]
bond (id 21), (id 55)
set_bond stick_color, color12, (id 21), (id 55)
set_color color13,[166, 255, 0]
bond (id 21), (id 64)
set_bond stick_color, color13, (id 21), (id 64)
set_color color14,[181, 255, 0]
bond (id 22), (id 43)
set_bond stick_color, color14, (id 22), (id 43)
set_color color15,[193, 255, 0]
bond (id 22), (id 51)
set_bond stick_color, color15, (id 22), (id 51)
set_color color16,[183, 255, 0]
bond (id 22), (id 64)
set_bond stick_color, color16, (id 22), (id 64)
set_color color17,[171, 255, 0]
bond (id 23), (id 59)
set_bond stick_color, color17, (id 23), (id 59)
set_color color18,[164, 255, 0]
bond (id 23), (id 61)
set_bond stick_color, color18, (id 23), (id 61)
set_color color19,[171, 255, 0]
bond (id 23), (id 64)
set_bond stick_color, color19, (id 23), (id 64)
set_color color20,[170, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color20, (id 51), (id 52)
set_color color21,[171, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color21, (id 51), (id 53)
set_color color22,[171, 255, 0]
bond (id 51), (id 54)
set_bond stick_color, color22, (id 51), (id 54)
set_color color23,[171, 255, 0]
bond (id 55), (id 56)
set_bond stick_color, color23, (id 55), (id 56)
set_color color24,[171, 255, 0]
bond (id 55), (id 57)
set_bond stick_color, color24, (id 55), (id 57)
set_color color25,[172, 255, 0]
bond (id 55), (id 58)
set_bond stick_color, color25, (id 55), (id 58)
set_color color26,[174, 255, 0]
bond (id 59), (id 60)
set_bond stick_color, color26, (id 59), (id 60)
set_color color27,[173, 255, 0]
bond (id 59), (id 73)
set_bond stick_color, color27, (id 59), (id 73)
set_color color28,[171, 255, 0]
bond (id 59), (id 77)
set_bond stick_color, color28, (id 59), (id 77)
set_color color29,[171, 255, 0]
bond (id 61), (id 62)
set_bond stick_color, color29, (id 61), (id 62)
set_color color30,[171, 255, 0]
bond (id 61), (id 65)
set_bond stick_color, color30, (id 61), (id 65)
set_color color31,[171, 255, 0]
bond (id 61), (id 69)
set_bond stick_color, color31, (id 61), (id 69)
set_color color32,[200, 255, 0]
bond (id 63), (id 64)
set_bond stick_color, color32, (id 63), (id 64)
set_color color33,[170, 255, 0]
bond (id 65), (id 66)
set_bond stick_color, color33, (id 65), (id 66)
set_color color34,[171, 255, 0]
bond (id 65), (id 67)
set_bond stick_color, color34, (id 65), (id 67)
set_color color35,[171, 255, 0]
bond (id 65), (id 68)
set_bond stick_color, color35, (id 65), (id 68)
set_color color36,[170, 255, 0]
bond (id 69), (id 70)
set_bond stick_color, color36, (id 69), (id 70)
set_color color37,[171, 255, 0]
bond (id 69), (id 71)
set_bond stick_color, color37, (id 69), (id 71)
set_color color38,[170, 255, 0]
bond (id 69), (id 72)
set_bond stick_color, color38, (id 69), (id 72)
set_color color39,[170, 255, 0]
bond (id 73), (id 74)
set_bond stick_color, color39, (id 73), (id 74)
set_color color40,[169, 255, 0]
bond (id 73), (id 75)
set_bond stick_color, color40, (id 73), (id 75)
set_color color41,[170, 255, 0]
bond (id 73), (id 76)
set_bond stick_color, color41, (id 73), (id 76)
set_color color42,[170, 255, 0]
bond (id 77), (id 78)
set_bond stick_color, color42, (id 77), (id 78)
set_color color43,[169, 255, 0]
bond (id 77), (id 79)
set_bond stick_color, color43, (id 77), (id 79)
set_color color44,[170, 255, 0]
bond (id 77), (id 80)
set_bond stick_color, color44, (id 77), (id 80)

