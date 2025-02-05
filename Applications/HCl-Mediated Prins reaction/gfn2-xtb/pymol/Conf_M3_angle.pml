# Max Energy:       7.05991606
# Min Energy:      -0.69594117
# median Energy:    3.18198745

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 116, id 119
unbond id 118, id 130

# Adding a representation with the appropriate colorID for each bond

set_color color1,[214, 255, 0]
bond (id 2), (id 11)
set_bond stick_color, color1, (id 2), (id 11)
set_color color2,[255, 244, 0]
bond (id 11), (id 12)
set_bond stick_color, color2, (id 11), (id 12)
set_color color3,[120, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color3, (id 12), (id 13)
set_color color4,[166, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color4, (id 12), (id 14)
set_color color5,[165, 255, 0]
bond (id 12), (id 119)
set_bond stick_color, color5, (id 12), (id 119)
set_color color6,[116, 255, 0]
bond (id 16), (id 17)
set_bond stick_color, color6, (id 16), (id 17)
set_color color7,[116, 255, 0]
bond (id 16), (id 19)
set_bond stick_color, color7, (id 16), (id 19)
set_color color8,[124, 255, 0]
bond (id 16), (id 115)
set_bond stick_color, color8, (id 16), (id 115)
set_color color9,[129, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color9, (id 17), (id 18)
set_color color10,[115, 255, 0]
bond (id 17), (id 35)
set_bond stick_color, color10, (id 17), (id 35)
set_color color11,[148, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color11, (id 19), (id 20)
set_color color12,[128, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color12, (id 19), (id 21)
set_color color13,[135, 255, 0]
bond (id 21), (id 22)
set_bond stick_color, color13, (id 21), (id 22)
set_color color14,[129, 255, 0]
bond (id 21), (id 23)
set_bond stick_color, color14, (id 21), (id 23)
set_color color15,[121, 255, 0]
bond (id 21), (id 113)
set_bond stick_color, color15, (id 21), (id 113)
set_color color16,[125, 255, 0]
bond (id 22), (id 25)
set_bond stick_color, color16, (id 22), (id 25)
set_color color17,[126, 255, 0]
bond (id 22), (id 26)
set_bond stick_color, color17, (id 22), (id 26)
set_color color18,[127, 255, 0]
bond (id 22), (id 27)
set_bond stick_color, color18, (id 22), (id 27)
set_color color19,[126, 255, 0]
bond (id 24), (id 28)
set_bond stick_color, color19, (id 24), (id 28)
set_color color20,[124, 255, 0]
bond (id 24), (id 29)
set_bond stick_color, color20, (id 24), (id 29)
set_color color21,[125, 255, 0]
bond (id 24), (id 30)
set_bond stick_color, color21, (id 24), (id 30)
set_color color22,[128, 255, 0]
bond (id 24), (id 113)
set_bond stick_color, color22, (id 24), (id 113)
set_color color23,[125, 255, 0]
bond (id 25), (id 28)
set_bond stick_color, color23, (id 25), (id 28)
set_color color24,[124, 255, 0]
bond (id 25), (id 31)
set_bond stick_color, color24, (id 25), (id 31)
set_color color25,[123, 255, 0]
bond (id 25), (id 32)
set_bond stick_color, color25, (id 25), (id 32)
set_color color26,[124, 255, 0]
bond (id 28), (id 33)
set_bond stick_color, color26, (id 28), (id 33)
set_color color27,[123, 255, 0]
bond (id 28), (id 34)
set_bond stick_color, color27, (id 28), (id 34)
set_color color28,[124, 255, 0]
bond (id 35), (id 36)
set_bond stick_color, color28, (id 35), (id 36)
set_color color29,[124, 255, 0]
bond (id 35), (id 37)
set_bond stick_color, color29, (id 35), (id 37)
set_color color30,[125, 255, 0]
bond (id 35), (id 38)
set_bond stick_color, color30, (id 35), (id 38)
set_color color31,[139, 255, 0]
bond (id 37), (id 51)
set_bond stick_color, color31, (id 37), (id 51)
set_color color32,[114, 255, 0]
bond (id 37), (id 62)
set_bond stick_color, color32, (id 37), (id 62)
set_color color33,[126, 255, 0]
bond (id 38), (id 39)
set_bond stick_color, color33, (id 38), (id 39)
set_color color34,[121, 255, 0]
bond (id 38), (id 43)
set_bond stick_color, color34, (id 38), (id 43)
set_color color35,[123, 255, 0]
bond (id 38), (id 47)
set_bond stick_color, color35, (id 38), (id 47)
set_color color36,[124, 255, 0]
bond (id 39), (id 40)
set_bond stick_color, color36, (id 39), (id 40)
set_color color37,[124, 255, 0]
bond (id 39), (id 41)
set_bond stick_color, color37, (id 39), (id 41)
set_color color38,[124, 255, 0]
bond (id 39), (id 42)
set_bond stick_color, color38, (id 39), (id 42)
set_color color39,[119, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color39, (id 43), (id 44)
set_color color40,[121, 255, 0]
bond (id 43), (id 45)
set_bond stick_color, color40, (id 43), (id 45)
set_color color41,[125, 255, 0]
bond (id 43), (id 46)
set_bond stick_color, color41, (id 43), (id 46)
set_color color42,[123, 255, 0]
bond (id 47), (id 48)
set_bond stick_color, color42, (id 47), (id 48)
set_color color43,[124, 255, 0]
bond (id 47), (id 49)
set_bond stick_color, color43, (id 47), (id 49)
set_color color44,[125, 255, 0]
bond (id 47), (id 50)
set_bond stick_color, color44, (id 47), (id 50)
set_color color45,[126, 255, 0]
bond (id 52), (id 54)
set_bond stick_color, color45, (id 52), (id 54)
set_color color46,[133, 255, 0]
bond (id 52), (id 62)
set_bond stick_color, color46, (id 52), (id 62)
set_color color47,[123, 255, 0]
bond (id 52), (id 63)
set_bond stick_color, color47, (id 52), (id 63)
set_color color48,[128, 255, 0]
bond (id 52), (id 67)
set_bond stick_color, color48, (id 52), (id 67)
set_color color49,[134, 255, 0]
bond (id 53), (id 55)
set_bond stick_color, color49, (id 53), (id 55)
set_color color50,[123, 255, 0]
bond (id 53), (id 56)
set_bond stick_color, color50, (id 53), (id 56)
set_color color51,[124, 255, 0]
bond (id 53), (id 57)
set_bond stick_color, color51, (id 53), (id 57)
set_color color52,[138, 255, 0]
bond (id 53), (id 62)
set_bond stick_color, color52, (id 53), (id 62)
set_color color53,[146, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color53, (id 54), (id 55)
set_color color54,[124, 255, 0]
bond (id 54), (id 58)
set_bond stick_color, color54, (id 54), (id 58)
set_color color55,[124, 255, 0]
bond (id 54), (id 59)
set_bond stick_color, color55, (id 54), (id 59)
set_color color56,[123, 255, 0]
bond (id 55), (id 60)
set_bond stick_color, color56, (id 55), (id 60)
set_color color57,[124, 255, 0]
bond (id 55), (id 61)
set_bond stick_color, color57, (id 55), (id 61)
set_color color58,[124, 255, 0]
bond (id 63), (id 64)
set_bond stick_color, color58, (id 63), (id 64)
set_color color59,[124, 255, 0]
bond (id 63), (id 65)
set_bond stick_color, color59, (id 63), (id 65)
set_color color60,[124, 255, 0]
bond (id 63), (id 66)
set_bond stick_color, color60, (id 63), (id 66)
set_color color61,[124, 255, 0]
bond (id 78), (id 82)
set_bond stick_color, color61, (id 78), (id 82)
set_color color62,[124, 255, 0]
bond (id 82), (id 83)
set_bond stick_color, color62, (id 82), (id 83)
set_color color63,[123, 255, 0]
bond (id 82), (id 84)
set_bond stick_color, color63, (id 82), (id 84)
set_color color64,[123, 255, 0]
bond (id 82), (id 85)
set_bond stick_color, color64, (id 82), (id 85)
set_color color65,[121, 255, 0]
bond (id 79), (id 86)
set_bond stick_color, color65, (id 79), (id 86)
set_color color66,[120, 255, 0]
bond (id 86), (id 87)
set_bond stick_color, color66, (id 86), (id 87)
set_color color67,[123, 255, 0]
bond (id 86), (id 95)
set_bond stick_color, color67, (id 86), (id 95)
set_color color68,[119, 255, 0]
bond (id 87), (id 88)
set_bond stick_color, color68, (id 87), (id 88)
set_color color69,[123, 255, 0]
bond (id 88), (id 89)
set_bond stick_color, color69, (id 88), (id 89)
set_color color70,[124, 255, 0]
bond (id 88), (id 90)
set_bond stick_color, color70, (id 88), (id 90)
set_color color71,[126, 255, 0]
bond (id 88), (id 91)
set_bond stick_color, color71, (id 88), (id 91)
set_color color72,[124, 255, 0]
bond (id 91), (id 92)
set_bond stick_color, color72, (id 91), (id 92)
set_color color73,[124, 255, 0]
bond (id 91), (id 93)
set_bond stick_color, color73, (id 91), (id 93)
set_color color74,[124, 255, 0]
bond (id 91), (id 94)
set_bond stick_color, color74, (id 91), (id 94)
set_color color75,[126, 255, 0]
bond (id 76), (id 113)
set_bond stick_color, color75, (id 76), (id 113)
set_color color76,[121, 255, 0]
bond (id 113), (id 114)
set_bond stick_color, color76, (id 113), (id 114)
set_color color77,[147, 255, 0]
bond (id 1), (id 116)
set_bond stick_color, color77, (id 1), (id 116)
set_color color78,[209, 255, 0]
bond (id 116), (id 117)
set_bond stick_color, color78, (id 116), (id 117)
set_color color79,[222, 255, 0]
bond (id 116), (id 118)
set_bond stick_color, color79, (id 116), (id 118)
set_color color80,[173, 255, 0]
bond (id 119), (id 120)
set_bond stick_color, color80, (id 119), (id 120)
set_color color81,[204, 255, 0]
bond (id 119), (id 121)
set_bond stick_color, color81, (id 119), (id 121)
set_color color82,[128, 255, 0]
bond (id 121), (id 122)
set_bond stick_color, color82, (id 121), (id 122)
set_color color83,[177, 255, 0]
bond (id 121), (id 126)
set_bond stick_color, color83, (id 121), (id 126)
set_color color84,[120, 255, 0]
bond (id 122), (id 123)
set_bond stick_color, color84, (id 122), (id 123)
set_color color85,[123, 255, 0]
bond (id 122), (id 124)
set_bond stick_color, color85, (id 122), (id 124)
set_color color86,[115, 255, 0]
bond (id 122), (id 125)
set_bond stick_color, color86, (id 122), (id 125)
set_color color87,[143, 255, 0]
bond (id 126), (id 127)
set_bond stick_color, color87, (id 126), (id 127)
set_color color88,[163, 255, 0]
bond (id 126), (id 128)
set_bond stick_color, color88, (id 126), (id 128)
set_color color89,[138, 255, 0]
bond (id 126), (id 129)
set_bond stick_color, color89, (id 126), (id 129)
set_color color90,[145, 255, 0]
bond (id 51), (id 130)
set_bond stick_color, color90, (id 51), (id 130)

