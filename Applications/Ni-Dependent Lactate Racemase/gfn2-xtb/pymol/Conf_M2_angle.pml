# Max Energy:      39.92212871
# Min Energy:      -2.47499072
# median Energy:   18.72356900

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[178, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[168, 255, 0]
bond (id 1), (id 6)
set_bond stick_color, color2, (id 1), (id 6)
set_color color3,[168, 255, 0]
bond (id 1), (id 62)
set_bond stick_color, color3, (id 1), (id 62)
set_color color4,[167, 255, 0]
bond (id 2), (id 7)
set_bond stick_color, color4, (id 2), (id 7)
set_color color5,[169, 255, 0]
bond (id 2), (id 8)
set_bond stick_color, color5, (id 2), (id 8)
set_color color6,[169, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color6, (id 4), (id 5)
set_color color7,[175, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color7, (id 5), (id 6)
set_color color8,[151, 255, 0]
bond (id 5), (id 7)
set_bond stick_color, color8, (id 5), (id 7)
set_color color9,[169, 255, 0]
bond (id 3), (id 6)
set_bond stick_color, color9, (id 3), (id 6)
set_color color10,[165, 255, 0]
bond (id 9), (id 10)
set_bond stick_color, color10, (id 9), (id 10)
set_color color11,[168, 255, 0]
bond (id 9), (id 11)
set_bond stick_color, color11, (id 9), (id 11)
set_color color12,[166, 255, 0]
bond (id 9), (id 12)
set_bond stick_color, color12, (id 9), (id 12)
set_color color13,[168, 255, 0]
bond (id 9), (id 61)
set_bond stick_color, color13, (id 9), (id 61)
set_color color14,[177, 255, 0]
bond (id 10), (id 38)
set_bond stick_color, color14, (id 10), (id 38)
set_color color15,[180, 255, 0]
bond (id 10), (id 40)
set_bond stick_color, color15, (id 10), (id 40)
set_color color16,[162, 255, 0]
bond (id 13), (id 14)
set_bond stick_color, color16, (id 13), (id 14)
set_color color17,[174, 255, 0]
bond (id 13), (id 18)
set_bond stick_color, color17, (id 13), (id 18)
set_color color18,[168, 255, 0]
bond (id 13), (id 60)
set_bond stick_color, color18, (id 13), (id 60)
set_color color19,[166, 255, 0]
bond (id 14), (id 19)
set_bond stick_color, color19, (id 14), (id 19)
set_color color20,[168, 255, 0]
bond (id 14), (id 20)
set_bond stick_color, color20, (id 14), (id 20)
set_color color21,[166, 255, 0]
bond (id 16), (id 17)
set_bond stick_color, color21, (id 16), (id 17)
set_color color22,[168, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color22, (id 17), (id 18)
set_color color23,[169, 255, 0]
bond (id 17), (id 19)
set_bond stick_color, color23, (id 17), (id 19)
set_color color24,[168, 255, 0]
bond (id 15), (id 18)
set_bond stick_color, color24, (id 15), (id 18)
set_color color25,[168, 255, 0]
bond (id 22), (id 27)
set_bond stick_color, color25, (id 22), (id 27)
set_color color26,[151, 255, 0]
bond (id 22), (id 29)
set_bond stick_color, color26, (id 22), (id 29)
set_color color27,[170, 255, 0]
bond (id 22), (id 36)
set_bond stick_color, color27, (id 22), (id 36)
set_color color28,[160, 255, 0]
bond (id 23), (id 24)
set_bond stick_color, color28, (id 23), (id 24)
set_color color29,[164, 255, 0]
bond (id 23), (id 26)
set_bond stick_color, color29, (id 23), (id 26)
set_color color30,[212, 255, 0]
bond (id 23), (id 35)
set_bond stick_color, color30, (id 23), (id 35)
set_color color31,[163, 255, 0]
bond (id 23), (id 57)
set_bond stick_color, color31, (id 23), (id 57)
set_color color32,[173, 255, 0]
bond (id 24), (id 25)
set_bond stick_color, color32, (id 24), (id 25)
set_color color33,[170, 255, 0]
bond (id 24), (id 37)
set_bond stick_color, color33, (id 24), (id 37)
set_color color34,[171, 255, 0]
bond (id 25), (id 30)
set_bond stick_color, color34, (id 25), (id 30)
set_color color35,[168, 255, 0]
bond (id 25), (id 41)
set_bond stick_color, color35, (id 25), (id 41)
set_color color36,[167, 255, 0]
bond (id 26), (id 28)
set_bond stick_color, color36, (id 26), (id 28)
set_color color37,[147, 255, 0]
bond (id 26), (id 31)
set_bond stick_color, color37, (id 26), (id 31)
set_color color38,[167, 255, 0]
bond (id 26), (id 43)
set_bond stick_color, color38, (id 26), (id 43)
set_color color39,[167, 255, 0]
bond (id 28), (id 44)
set_bond stick_color, color39, (id 28), (id 44)
set_color color40,[154, 255, 0]
bond (id 21), (id 29)
set_bond stick_color, color40, (id 21), (id 29)
set_color color41,[172, 255, 0]
bond (id 30), (id 33)
set_bond stick_color, color41, (id 30), (id 33)
set_color color42,[169, 255, 0]
bond (id 30), (id 38)
set_bond stick_color, color42, (id 30), (id 38)
set_color color43,[166, 255, 0]
bond (id 31), (id 32)
set_bond stick_color, color43, (id 31), (id 32)
set_color color44,[186, 255, 0]
bond (id 31), (id 34)
set_bond stick_color, color44, (id 31), (id 34)
set_color color45,[167, 255, 0]
bond (id 31), (id 45)
set_bond stick_color, color45, (id 31), (id 45)
set_color color46,[169, 255, 0]
bond (id 32), (id 46)
set_bond stick_color, color46, (id 32), (id 46)
set_color color47,[168, 255, 0]
bond (id 21), (id 33)
set_bond stick_color, color47, (id 21), (id 33)
set_color color48,[211, 255, 0]
bond (id 33), (id 36)
set_bond stick_color, color48, (id 33), (id 36)
set_color color49,[216, 255, 0]
bond (id 34), (id 35)
set_bond stick_color, color49, (id 34), (id 35)
set_color color50,[167, 255, 0]
bond (id 34), (id 47)
set_bond stick_color, color50, (id 34), (id 47)
set_color color51,[168, 255, 0]
bond (id 34), (id 63)
set_bond stick_color, color51, (id 34), (id 63)
set_color color52,[166, 255, 0]
bond (id 36), (id 37)
set_bond stick_color, color52, (id 36), (id 37)
set_color color53,[167, 255, 0]
bond (id 37), (id 42)
set_bond stick_color, color53, (id 37), (id 42)
set_color color54,[160, 255, 0]
bond (id 38), (id 39)
set_bond stick_color, color54, (id 38), (id 39)
set_color color55,[255, 229, 0]
bond (id 48), (id 49)
set_bond stick_color, color55, (id 48), (id 49)
set_color color56,[255, 243, 0]
bond (id 49), (id 50)
set_bond stick_color, color56, (id 49), (id 50)
set_color color57,[255, 239, 0]
bond (id 49), (id 51)
set_bond stick_color, color57, (id 49), (id 51)
set_color color58,[192, 255, 0]
bond (id 49), (id 58)
set_bond stick_color, color58, (id 49), (id 58)
set_color color59,[148, 255, 0]
bond (id 50), (id 55)
set_bond stick_color, color59, (id 50), (id 55)
set_color color60,[194, 255, 0]
bond (id 50), (id 56)
set_bond stick_color, color60, (id 50), (id 56)
set_color color61,[169, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color61, (id 51), (id 52)
set_color color62,[168, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color62, (id 51), (id 53)
set_color color63,[170, 255, 0]
bond (id 51), (id 54)
set_bond stick_color, color63, (id 51), (id 54)
set_color color64,[170, 255, 0]
bond (id 58), (id 59)
set_bond stick_color, color64, (id 58), (id 59)
set_color color65,[168, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color65, (id 19), (id 21)
set_color color66,[168, 255, 0]
bond (id 21), (id 39)
set_bond stick_color, color66, (id 21), (id 39)

