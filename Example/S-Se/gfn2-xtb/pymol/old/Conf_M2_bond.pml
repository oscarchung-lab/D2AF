# Max Energy:      28.51153758
# Min Energy:      -2.19773746
# median Energy:   13.15690006

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 144, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[157, 255, 0]
bond (id 1), (id 8)
set_bond stick_color, color2, (id 1), (id 8)
set_color color3,[173, 255, 0]
bond (id 1), (id 19)
set_bond stick_color, color3, (id 1), (id 19)
set_color color4,[178, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)
set_color color5,[172, 255, 0]
bond (id 2), (id 7)
set_bond stick_color, color5, (id 2), (id 7)
set_color color6,[171, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color6, (id 3), (id 4)
set_color color7,[170, 255, 0]
bond (id 3), (id 5)
set_bond stick_color, color7, (id 3), (id 5)
set_color color8,[169, 255, 0]
bond (id 3), (id 6)
set_bond stick_color, color8, (id 3), (id 6)
set_color color9,[208, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color9, (id 8), (id 9)
set_color color10,[162, 255, 0]
bond (id 8), (id 10)
set_bond stick_color, color10, (id 8), (id 10)
set_color color11,[184, 255, 0]
bond (id 9), (id 11)
set_bond stick_color, color11, (id 9), (id 11)
set_color color12,[172, 255, 0]
bond (id 9), (id 12)
set_bond stick_color, color12, (id 9), (id 12)
set_color color13,[159, 255, 0]
bond (id 10), (id 13)
set_bond stick_color, color13, (id 10), (id 13)
set_color color14,[171, 255, 0]
bond (id 10), (id 14)
set_bond stick_color, color14, (id 10), (id 14)
set_color color15,[188, 255, 0]
bond (id 11), (id 15)
set_bond stick_color, color15, (id 11), (id 15)
set_color color16,[172, 255, 0]
bond (id 11), (id 16)
set_bond stick_color, color16, (id 11), (id 16)
set_color color17,[167, 255, 0]
bond (id 13), (id 15)
set_bond stick_color, color17, (id 13), (id 15)
set_color color18,[172, 255, 0]
bond (id 13), (id 17)
set_bond stick_color, color18, (id 13), (id 17)
set_color color19,[171, 255, 0]
bond (id 15), (id 18)
set_bond stick_color, color19, (id 15), (id 18)
set_color color20,[169, 255, 0]
bond (id 20), (id 24)
set_bond stick_color, color20, (id 20), (id 24)
set_color color21,[255, 3, 0]
bond (id 20), (id 63)
set_bond stick_color, color21, (id 20), (id 63)
set_color color22,[142, 255, 0]
bond (id 21), (id 35)
set_bond stick_color, color22, (id 21), (id 35)
set_color color23,[168, 255, 0]
bond (id 21), (id 55)
set_bond stick_color, color23, (id 21), (id 55)
set_color color24,[224, 255, 0]
bond (id 21), (id 64)
set_bond stick_color, color24, (id 21), (id 64)
set_color color25,[153, 255, 0]
bond (id 22), (id 43)
set_bond stick_color, color25, (id 22), (id 43)
set_color color26,[176, 255, 0]
bond (id 22), (id 51)
set_bond stick_color, color26, (id 22), (id 51)
set_color color27,[218, 255, 0]
bond (id 22), (id 64)
set_bond stick_color, color27, (id 22), (id 64)
set_color color28,[167, 255, 0]
bond (id 23), (id 59)
set_bond stick_color, color28, (id 23), (id 59)
set_color color29,[143, 255, 0]
bond (id 23), (id 61)
set_bond stick_color, color29, (id 23), (id 61)
set_color color30,[192, 255, 0]
bond (id 23), (id 64)
set_bond stick_color, color30, (id 23), (id 64)
set_color color31,[173, 255, 0]
bond (id 24), (id 25)
set_bond stick_color, color31, (id 24), (id 25)
set_color color32,[176, 255, 0]
bond (id 24), (id 33)
set_bond stick_color, color32, (id 24), (id 33)
set_color color33,[171, 255, 0]
bond (id 25), (id 26)
set_bond stick_color, color33, (id 25), (id 26)
set_color color34,[169, 255, 0]
bond (id 25), (id 27)
set_bond stick_color, color34, (id 25), (id 27)
set_color color35,[171, 255, 0]
bond (id 27), (id 28)
set_bond stick_color, color35, (id 27), (id 28)
set_color color36,[170, 255, 0]
bond (id 27), (id 29)
set_bond stick_color, color36, (id 27), (id 29)
set_color color37,[171, 255, 0]
bond (id 29), (id 30)
set_bond stick_color, color37, (id 29), (id 30)
set_color color38,[171, 255, 0]
bond (id 29), (id 31)
set_bond stick_color, color38, (id 29), (id 31)
set_color color39,[171, 255, 0]
bond (id 31), (id 32)
set_bond stick_color, color39, (id 31), (id 32)
set_color color40,[171, 255, 0]
bond (id 31), (id 33)
set_bond stick_color, color40, (id 31), (id 33)
set_color color41,[171, 255, 0]
bond (id 33), (id 34)
set_bond stick_color, color41, (id 33), (id 34)
set_color color42,[175, 255, 0]
bond (id 35), (id 36)
set_bond stick_color, color42, (id 35), (id 36)
set_color color43,[168, 255, 0]
bond (id 35), (id 41)
set_bond stick_color, color43, (id 35), (id 41)
set_color color44,[171, 255, 0]
bond (id 36), (id 37)
set_bond stick_color, color44, (id 36), (id 37)
set_color color45,[169, 255, 0]
bond (id 36), (id 44)
set_bond stick_color, color45, (id 36), (id 44)
set_color color46,[167, 255, 0]
bond (id 37), (id 38)
set_bond stick_color, color46, (id 37), (id 38)
set_color color47,[171, 255, 0]
bond (id 37), (id 85)
set_bond stick_color, color47, (id 37), (id 85)
set_color color48,[170, 255, 0]
bond (id 38), (id 39)
set_bond stick_color, color48, (id 38), (id 39)
set_color color49,[171, 255, 0]
bond (id 38), (id 86)
set_bond stick_color, color49, (id 38), (id 86)
set_color color50,[171, 255, 0]
bond (id 39), (id 40)
set_bond stick_color, color50, (id 39), (id 40)
set_color color51,[169, 255, 0]
bond (id 39), (id 41)
set_bond stick_color, color51, (id 39), (id 41)
set_color color52,[172, 255, 0]
bond (id 41), (id 42)
set_bond stick_color, color52, (id 41), (id 42)
set_color color53,[184, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color53, (id 43), (id 44)
set_color color54,[166, 255, 0]
bond (id 43), (id 49)
set_bond stick_color, color54, (id 43), (id 49)
set_color color55,[171, 255, 0]
bond (id 44), (id 45)
set_bond stick_color, color55, (id 44), (id 45)
set_color color56,[164, 255, 0]
bond (id 45), (id 46)
set_bond stick_color, color56, (id 45), (id 46)
set_color color57,[170, 255, 0]
bond (id 45), (id 82)
set_bond stick_color, color57, (id 45), (id 82)
set_color color58,[173, 255, 0]
bond (id 46), (id 47)
set_bond stick_color, color58, (id 46), (id 47)
set_color color59,[169, 255, 0]
bond (id 46), (id 81)
set_bond stick_color, color59, (id 46), (id 81)
set_color color60,[170, 255, 0]
bond (id 47), (id 48)
set_bond stick_color, color60, (id 47), (id 48)
set_color color61,[172, 255, 0]
bond (id 47), (id 49)
set_bond stick_color, color61, (id 47), (id 49)
set_color color62,[172, 255, 0]
bond (id 49), (id 50)
set_bond stick_color, color62, (id 49), (id 50)
set_color color63,[171, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color63, (id 51), (id 52)
set_color color64,[171, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color64, (id 51), (id 53)
set_color color65,[172, 255, 0]
bond (id 51), (id 54)
set_bond stick_color, color65, (id 51), (id 54)
set_color color66,[171, 255, 0]
bond (id 55), (id 56)
set_bond stick_color, color66, (id 55), (id 56)
set_color color67,[171, 255, 0]
bond (id 55), (id 57)
set_bond stick_color, color67, (id 55), (id 57)
set_color color68,[173, 255, 0]
bond (id 55), (id 58)
set_bond stick_color, color68, (id 55), (id 58)
set_color color69,[171, 255, 0]
bond (id 59), (id 60)
set_bond stick_color, color69, (id 59), (id 60)
set_color color70,[171, 255, 0]
bond (id 59), (id 73)
set_bond stick_color, color70, (id 59), (id 73)
set_color color71,[171, 255, 0]
bond (id 59), (id 77)
set_bond stick_color, color71, (id 59), (id 77)
set_color color72,[171, 255, 0]
bond (id 61), (id 62)
set_bond stick_color, color72, (id 61), (id 62)
set_color color73,[172, 255, 0]
bond (id 61), (id 65)
set_bond stick_color, color73, (id 61), (id 65)
set_color color74,[172, 255, 0]
bond (id 61), (id 69)
set_bond stick_color, color74, (id 61), (id 69)
set_color color75,[0, 255, 0]
bond (id 63), (id 64)
set_bond stick_color, color75, (id 63), (id 64)
set_color color76,[171, 255, 0]
bond (id 65), (id 66)
set_bond stick_color, color76, (id 65), (id 66)
set_color color77,[171, 255, 0]
bond (id 65), (id 67)
set_bond stick_color, color77, (id 65), (id 67)
set_color color78,[171, 255, 0]
bond (id 65), (id 68)
set_bond stick_color, color78, (id 65), (id 68)
set_color color79,[171, 255, 0]
bond (id 69), (id 70)
set_bond stick_color, color79, (id 69), (id 70)
set_color color80,[171, 255, 0]
bond (id 69), (id 71)
set_bond stick_color, color80, (id 69), (id 71)
set_color color81,[171, 255, 0]
bond (id 69), (id 72)
set_bond stick_color, color81, (id 69), (id 72)
set_color color82,[171, 255, 0]
bond (id 73), (id 74)
set_bond stick_color, color82, (id 73), (id 74)
set_color color83,[171, 255, 0]
bond (id 73), (id 75)
set_bond stick_color, color83, (id 73), (id 75)
set_color color84,[172, 255, 0]
bond (id 73), (id 76)
set_bond stick_color, color84, (id 73), (id 76)
set_color color85,[172, 255, 0]
bond (id 77), (id 78)
set_bond stick_color, color85, (id 77), (id 78)
set_color color86,[169, 255, 0]
bond (id 77), (id 79)
set_bond stick_color, color86, (id 77), (id 79)
set_color color87,[171, 255, 0]
bond (id 77), (id 80)
set_bond stick_color, color87, (id 77), (id 80)
set_color color88,[175, 255, 0]
bond (id 81), (id 84)
set_bond stick_color, color88, (id 81), (id 84)
set_color color89,[171, 255, 0]
bond (id 81), (id 89)
set_bond stick_color, color89, (id 81), (id 89)
set_color color90,[170, 255, 0]
bond (id 82), (id 83)
set_bond stick_color, color90, (id 82), (id 83)
set_color color91,[171, 255, 0]
bond (id 82), (id 92)
set_bond stick_color, color91, (id 82), (id 92)
set_color color92,[171, 255, 0]
bond (id 83), (id 84)
set_bond stick_color, color92, (id 83), (id 84)
set_color color93,[171, 255, 0]
bond (id 83), (id 91)
set_bond stick_color, color93, (id 83), (id 91)
set_color color94,[171, 255, 0]
bond (id 84), (id 90)
set_bond stick_color, color94, (id 84), (id 90)
set_color color95,[172, 255, 0]
bond (id 85), (id 88)
set_bond stick_color, color95, (id 85), (id 88)
set_color color96,[171, 255, 0]
bond (id 85), (id 93)
set_bond stick_color, color96, (id 85), (id 93)
set_color color97,[172, 255, 0]
bond (id 86), (id 87)
set_bond stick_color, color97, (id 86), (id 87)
set_color color98,[171, 255, 0]
bond (id 86), (id 96)
set_bond stick_color, color98, (id 86), (id 96)
set_color color99,[171, 255, 0]
bond (id 87), (id 88)
set_bond stick_color, color99, (id 87), (id 88)
set_color color100,[171, 255, 0]
bond (id 87), (id 95)
set_bond stick_color, color100, (id 87), (id 95)
set_color color101,[171, 255, 0]
bond (id 88), (id 94)
set_bond stick_color, color101, (id 88), (id 94)

