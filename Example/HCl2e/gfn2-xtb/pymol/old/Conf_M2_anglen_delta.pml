# Max change:      -0.05000000
# Min change:      -7.90000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[248, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[177, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color2, (id 1), (id 5)

set_color color3,[0, 255, 0]
bond (id 1), (id 116)
set_bond stick_color, color3, (id 1), (id 116)

set_color color4,[129, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)

set_color color5,[30, 255, 0]
bond (id 2), (id 11)
set_bond stick_color, color5, (id 2), (id 11)

set_color color6,[222, 255, 0]
bond (id 3), (id 8)
set_bond stick_color, color6, (id 3), (id 8)

set_color color7,[235, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color7, (id 3), (id 4)

set_color color8,[235, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color8, (id 4), (id 6)

set_color color9,[242, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color9, (id 5), (id 6)

set_color color10,[248, 255, 0]
bond (id 5), (id 9)
set_bond stick_color, color10, (id 5), (id 9)

set_color color11,[245, 255, 0]
bond (id 6), (id 10)
set_bond stick_color, color11, (id 6), (id 10)

set_color color12,[56, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color12, (id 11), (id 12)

set_color color13,[154, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color13, (id 12), (id 14)

set_color color14,[216, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color14, (id 12), (id 13)

set_color color15,[109, 255, 0]
bond (id 12), (id 119)
set_bond stick_color, color15, (id 12), (id 119)

set_color color16,[200, 255, 0]
bond (id 16), (id 19)
set_bond stick_color, color16, (id 16), (id 19)

set_color color17,[250, 255, 0]
bond (id 16), (id 115)
set_bond stick_color, color17, (id 16), (id 115)

set_color color18,[230, 255, 0]
bond (id 16), (id 17)
set_bond stick_color, color18, (id 16), (id 17)

set_color color19,[245, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color19, (id 17), (id 18)

set_color color20,[235, 255, 0]
bond (id 17), (id 35)
set_bond stick_color, color20, (id 17), (id 35)

set_color color21,[214, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color21, (id 19), (id 20)

set_color color22,[208, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color22, (id 19), (id 21)

set_color color23,[242, 255, 0]
bond (id 21), (id 22)
set_bond stick_color, color23, (id 21), (id 22)

set_color color24,[235, 255, 0]
bond (id 21), (id 23)
set_bond stick_color, color24, (id 21), (id 23)

set_color color25,[237, 255, 0]
bond (id 21), (id 113)
set_bond stick_color, color25, (id 21), (id 113)

set_color color26,[250, 255, 0]
bond (id 22), (id 25)
set_bond stick_color, color26, (id 22), (id 25)

set_color color27,[245, 255, 0]
bond (id 22), (id 26)
set_bond stick_color, color27, (id 22), (id 26)

set_color color28,[246, 255, 0]
bond (id 22), (id 27)
set_bond stick_color, color28, (id 22), (id 27)

set_color color29,[248, 255, 0]
bond (id 24), (id 28)
set_bond stick_color, color29, (id 24), (id 28)

set_color color30,[250, 255, 0]
bond (id 24), (id 30)
set_bond stick_color, color30, (id 24), (id 30)

set_color color31,[253, 255, 0]
bond (id 24), (id 29)
set_bond stick_color, color31, (id 24), (id 29)

set_color color32,[251, 255, 0]
bond (id 25), (id 31)
set_bond stick_color, color32, (id 25), (id 31)

set_color color33,[251, 255, 0]
bond (id 25), (id 28)
set_bond stick_color, color33, (id 25), (id 28)

set_color color34,[242, 255, 0]
bond (id 35), (id 37)
set_bond stick_color, color34, (id 35), (id 37)

set_color color35,[246, 255, 0]
bond (id 35), (id 36)
set_bond stick_color, color35, (id 35), (id 36)

set_color color36,[243, 255, 0]
bond (id 35), (id 38)
set_bond stick_color, color36, (id 35), (id 38)

set_color color37,[251, 255, 0]
bond (id 37), (id 51)
set_bond stick_color, color37, (id 37), (id 51)

set_color color38,[251, 255, 0]
bond (id 37), (id 62)
set_bond stick_color, color38, (id 37), (id 62)

set_color color39,[251, 255, 0]
bond (id 38), (id 39)
set_bond stick_color, color39, (id 38), (id 39)

set_color color40,[238, 255, 0]
bond (id 38), (id 43)
set_bond stick_color, color40, (id 38), (id 43)

set_color color41,[251, 255, 0]
bond (id 38), (id 47)
set_bond stick_color, color41, (id 38), (id 47)

set_color color42,[251, 255, 0]
bond (id 39), (id 42)
set_bond stick_color, color42, (id 39), (id 42)

set_color color43,[253, 255, 0]
bond (id 39), (id 41)
set_bond stick_color, color43, (id 39), (id 41)

set_color color44,[234, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color44, (id 43), (id 44)

set_color color45,[248, 255, 0]
bond (id 43), (id 46)
set_bond stick_color, color45, (id 43), (id 46)

set_color color46,[251, 255, 0]
bond (id 47), (id 48)
set_bond stick_color, color46, (id 47), (id 48)

set_color color47,[250, 255, 0]
bond (id 47), (id 50)
set_bond stick_color, color47, (id 47), (id 50)

set_color color48,[251, 255, 0]
bond (id 47), (id 49)
set_bond stick_color, color48, (id 47), (id 49)

set_color color49,[246, 255, 0]
bond (id 52), (id 62)
set_bond stick_color, color49, (id 52), (id 62)

set_color color50,[246, 255, 0]
bond (id 52), (id 67)
set_bond stick_color, color50, (id 52), (id 67)

set_color color51,[250, 255, 0]
bond (id 52), (id 63)
set_bond stick_color, color51, (id 52), (id 63)

set_color color52,[246, 255, 0]
bond (id 53), (id 55)
set_bond stick_color, color52, (id 53), (id 55)

set_color color53,[251, 255, 0]
bond (id 53), (id 57)
set_bond stick_color, color53, (id 53), (id 57)

set_color color54,[251, 255, 0]
bond (id 52), (id 54)
set_bond stick_color, color54, (id 52), (id 54)

set_color color55,[246, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color55, (id 54), (id 55)

set_color color56,[251, 255, 0]
bond (id 55), (id 61)
set_bond stick_color, color56, (id 55), (id 61)

set_color color57,[250, 255, 0]
bond (id 53), (id 62)
set_bond stick_color, color57, (id 53), (id 62)

set_color color58,[253, 255, 0]
bond (id 63), (id 64)
set_bond stick_color, color58, (id 63), (id 64)

set_color color59,[253, 255, 0]
bond (id 63), (id 65)
set_bond stick_color, color59, (id 63), (id 65)

set_color color60,[253, 255, 0]
bond (id 63), (id 66)
set_bond stick_color, color60, (id 63), (id 66)

set_color color61,[253, 255, 0]
bond (id 67), (id 69)
set_bond stick_color, color61, (id 67), (id 69)

set_color color62,[253, 255, 0]
bond (id 67), (id 68)
set_bond stick_color, color62, (id 67), (id 68)

set_color color63,[253, 255, 0]
bond (id 68), (id 71)
set_bond stick_color, color63, (id 68), (id 71)

set_color color64,[248, 255, 0]
bond (id 69), (id 72)
set_bond stick_color, color64, (id 69), (id 72)

set_color color65,[253, 255, 0]
bond (id 69), (id 73)
set_bond stick_color, color65, (id 69), (id 73)

set_color color66,[253, 255, 0]
bond (id 70), (id 74)
set_bond stick_color, color66, (id 70), (id 74)

set_color color67,[253, 255, 0]
bond (id 70), (id 135)
set_bond stick_color, color67, (id 70), (id 135)

set_color color68,[250, 255, 0]
bond (id 72), (id 75)
set_bond stick_color, color68, (id 72), (id 75)

set_color color69,[253, 255, 0]
bond (id 76), (id 78)
set_bond stick_color, color69, (id 76), (id 78)

set_color color70,[248, 255, 0]
bond (id 78), (id 80)
set_bond stick_color, color70, (id 78), (id 80)

set_color color71,[248, 255, 0]
bond (id 78), (id 82)
set_bond stick_color, color71, (id 78), (id 82)

set_color color72,[251, 255, 0]
bond (id 77), (id 79)
set_bond stick_color, color72, (id 77), (id 79)

set_color color73,[243, 255, 0]
bond (id 79), (id 80)
set_bond stick_color, color73, (id 79), (id 80)

set_color color74,[248, 255, 0]
bond (id 79), (id 86)
set_bond stick_color, color74, (id 79), (id 86)

set_color color75,[253, 255, 0]
bond (id 80), (id 81)
set_bond stick_color, color75, (id 80), (id 81)

set_color color76,[253, 255, 0]
bond (id 82), (id 83)
set_bond stick_color, color76, (id 82), (id 83)

set_color color77,[242, 255, 0]
bond (id 86), (id 87)
set_bond stick_color, color77, (id 86), (id 87)

set_color color78,[250, 255, 0]
bond (id 86), (id 95)
set_bond stick_color, color78, (id 86), (id 95)

set_color color79,[242, 255, 0]
bond (id 87), (id 88)
set_bond stick_color, color79, (id 87), (id 88)

set_color color80,[248, 255, 0]
bond (id 88), (id 91)
set_bond stick_color, color80, (id 88), (id 91)

set_color color81,[251, 255, 0]
bond (id 88), (id 89)
set_bond stick_color, color81, (id 88), (id 89)

set_color color82,[250, 255, 0]
bond (id 88), (id 90)
set_bond stick_color, color82, (id 88), (id 90)

set_color color83,[251, 255, 0]
bond (id 91), (id 93)
set_bond stick_color, color83, (id 91), (id 93)

set_color color84,[251, 255, 0]
bond (id 91), (id 94)
set_bond stick_color, color84, (id 91), (id 94)

set_color color85,[229, 255, 0]
bond (id 77), (id 96)
set_bond stick_color, color85, (id 77), (id 96)

set_color color86,[224, 255, 0]
bond (id 96), (id 98)
set_bond stick_color, color86, (id 96), (id 98)

set_color color87,[250, 255, 0]
bond (id 96), (id 97)
set_bond stick_color, color87, (id 96), (id 97)

set_color color88,[250, 255, 0]
bond (id 97), (id 99)
set_bond stick_color, color88, (id 97), (id 99)

set_color color89,[250, 255, 0]
bond (id 98), (id 102)
set_bond stick_color, color89, (id 98), (id 102)

set_color color90,[250, 255, 0]
bond (id 99), (id 103)
set_bond stick_color, color90, (id 99), (id 103)

set_color color91,[251, 255, 0]
bond (id 99), (id 104)
set_bond stick_color, color91, (id 99), (id 104)

set_color color92,[253, 255, 0]
bond (id 98), (id 101)
set_bond stick_color, color92, (id 98), (id 101)

set_color color93,[251, 255, 0]
bond (id 101), (id 104)
set_bond stick_color, color93, (id 101), (id 104)

set_color color94,[251, 255, 0]
bond (id 103), (id 107)
set_bond stick_color, color94, (id 103), (id 107)

set_color color95,[251, 255, 0]
bond (id 103), (id 106)
set_bond stick_color, color95, (id 103), (id 106)

set_color color96,[253, 255, 0]
bond (id 104), (id 108)
set_bond stick_color, color96, (id 104), (id 108)

set_color color97,[253, 255, 0]
bond (id 106), (id 110)
set_bond stick_color, color97, (id 106), (id 110)

set_color color98,[250, 255, 0]
bond (id 108), (id 109)
set_bond stick_color, color98, (id 108), (id 109)

set_color color99,[251, 255, 0]
bond (id 108), (id 111)
set_bond stick_color, color99, (id 108), (id 111)

set_color color100,[253, 255, 0]
bond (id 106), (id 109)
set_bond stick_color, color100, (id 106), (id 109)

set_color color101,[248, 255, 0]
bond (id 76), (id 113)
set_bond stick_color, color101, (id 76), (id 113)

set_color color102,[251, 255, 0]
bond (id 24), (id 113)
set_bond stick_color, color102, (id 24), (id 113)

set_color color103,[100, 255, 0]
bond (id 116), (id 117)
set_bond stick_color, color103, (id 116), (id 117)

set_color color104,[103, 255, 0]
bond (id 116), (id 118)
set_bond stick_color, color104, (id 116), (id 118)

set_color color105,[48, 255, 0]
bond (id 119), (id 121)
set_bond stick_color, color105, (id 119), (id 121)

set_color color106,[196, 255, 0]
bond (id 119), (id 120)
set_bond stick_color, color106, (id 119), (id 120)

set_color color107,[164, 255, 0]
bond (id 121), (id 122)
set_bond stick_color, color107, (id 121), (id 122)

set_color color108,[140, 255, 0]
bond (id 121), (id 126)
set_bond stick_color, color108, (id 121), (id 126)

set_color color109,[204, 255, 0]
bond (id 122), (id 123)
set_bond stick_color, color109, (id 122), (id 123)

set_color color110,[227, 255, 0]
bond (id 122), (id 124)
set_bond stick_color, color110, (id 122), (id 124)

set_color color111,[111, 255, 0]
bond (id 126), (id 128)
set_bond stick_color, color111, (id 126), (id 128)

set_color color112,[200, 255, 0]
bond (id 126), (id 129)
set_bond stick_color, color112, (id 126), (id 129)

set_color color113,[251, 255, 0]
bond (id 74), (id 131)
set_bond stick_color, color113, (id 74), (id 131)

set_color color114,[251, 255, 0]
bond (id 131), (id 133)
set_bond stick_color, color114, (id 131), (id 133)

set_color color115,[251, 255, 0]
bond (id 131), (id 132)
set_bond stick_color, color115, (id 131), (id 132)

set_color color116,[251, 255, 0]
bond (id 132), (id 136)
set_bond stick_color, color116, (id 132), (id 136)

set_color color117,[253, 255, 0]
bond (id 135), (id 136)
set_bond stick_color, color117, (id 135), (id 136)

set_color color118,[253, 255, 0]
bond (id 135), (id 137)
set_bond stick_color, color118, (id 135), (id 137)


