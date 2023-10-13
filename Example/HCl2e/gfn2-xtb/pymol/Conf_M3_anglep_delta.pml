# Max change:       5.15000000
# Min change:       0.00000000

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

set_color color1,[255, 49, 0]
bond (id 11), (id 12)
set_bond stick_color, color1, (id 11), (id 12)

set_color color2,[255, 232, 0]
bond (id 12), (id 13)
set_bond stick_color, color2, (id 12), (id 13)

set_color color3,[255, 44, 0]
bond (id 12), (id 119)
set_bond stick_color, color3, (id 12), (id 119)

set_color color4,[255, 247, 0]
bond (id 16), (id 17)
set_bond stick_color, color4, (id 16), (id 17)

set_color color5,[255, 247, 0]
bond (id 16), (id 19)
set_bond stick_color, color5, (id 16), (id 19)

set_color color6,[255, 255, 0]
bond (id 16), (id 115)
set_bond stick_color, color6, (id 16), (id 115)

set_color color7,[255, 217, 0]
bond (id 19), (id 21)
set_bond stick_color, color7, (id 19), (id 21)

set_color color8,[255, 252, 0]
bond (id 21), (id 23)
set_bond stick_color, color8, (id 21), (id 23)

set_color color9,[255, 207, 0]
bond (id 21), (id 113)
set_bond stick_color, color9, (id 21), (id 113)

set_color color10,[255, 240, 0]
bond (id 21), (id 22)
set_bond stick_color, color10, (id 21), (id 22)

set_color color11,[255, 250, 0]
bond (id 22), (id 25)
set_bond stick_color, color11, (id 22), (id 25)

set_color color12,[255, 247, 0]
bond (id 22), (id 26)
set_bond stick_color, color12, (id 22), (id 26)

set_color color13,[255, 252, 0]
bond (id 22), (id 27)
set_bond stick_color, color13, (id 22), (id 27)

set_color color14,[255, 247, 0]
bond (id 24), (id 28)
set_bond stick_color, color14, (id 24), (id 28)

set_color color15,[255, 255, 0]
bond (id 24), (id 29)
set_bond stick_color, color15, (id 24), (id 29)

set_color color16,[255, 247, 0]
bond (id 24), (id 113)
set_bond stick_color, color16, (id 24), (id 113)

set_color color17,[255, 255, 0]
bond (id 24), (id 30)
set_bond stick_color, color17, (id 24), (id 30)

set_color color18,[255, 250, 0]
bond (id 25), (id 28)
set_bond stick_color, color18, (id 25), (id 28)

set_color color19,[255, 252, 0]
bond (id 25), (id 32)
set_bond stick_color, color19, (id 25), (id 32)

set_color color20,[255, 252, 0]
bond (id 25), (id 31)
set_bond stick_color, color20, (id 25), (id 31)

set_color color21,[255, 252, 0]
bond (id 28), (id 33)
set_bond stick_color, color21, (id 28), (id 33)

set_color color22,[255, 252, 0]
bond (id 28), (id 34)
set_bond stick_color, color22, (id 28), (id 34)

set_color color23,[255, 232, 0]
bond (id 17), (id 35)
set_bond stick_color, color23, (id 17), (id 35)

set_color color24,[255, 237, 0]
bond (id 35), (id 36)
set_bond stick_color, color24, (id 35), (id 36)

set_color color25,[255, 245, 0]
bond (id 35), (id 38)
set_bond stick_color, color25, (id 35), (id 38)

set_color color26,[255, 0, 0]
bond (id 37), (id 51)
set_bond stick_color, color26, (id 37), (id 51)

set_color color27,[255, 240, 0]
bond (id 37), (id 62)
set_bond stick_color, color27, (id 37), (id 62)

set_color color28,[255, 255, 0]
bond (id 38), (id 43)
set_bond stick_color, color28, (id 38), (id 43)

set_color color29,[255, 247, 0]
bond (id 38), (id 47)
set_bond stick_color, color29, (id 38), (id 47)

set_color color30,[255, 252, 0]
bond (id 38), (id 39)
set_bond stick_color, color30, (id 38), (id 39)

set_color color31,[255, 250, 0]
bond (id 39), (id 40)
set_bond stick_color, color31, (id 39), (id 40)

set_color color32,[255, 255, 0]
bond (id 39), (id 41)
set_bond stick_color, color32, (id 39), (id 41)

set_color color33,[255, 252, 0]
bond (id 39), (id 42)
set_bond stick_color, color33, (id 39), (id 42)

set_color color34,[255, 222, 0]
bond (id 43), (id 45)
set_bond stick_color, color34, (id 43), (id 45)

set_color color35,[255, 245, 0]
bond (id 43), (id 46)
set_bond stick_color, color35, (id 43), (id 46)

set_color color36,[255, 232, 0]
bond (id 43), (id 44)
set_bond stick_color, color36, (id 43), (id 44)

set_color color37,[255, 242, 0]
bond (id 47), (id 49)
set_bond stick_color, color37, (id 47), (id 49)

set_color color38,[255, 255, 0]
bond (id 47), (id 50)
set_bond stick_color, color38, (id 47), (id 50)

set_color color39,[255, 245, 0]
bond (id 47), (id 48)
set_bond stick_color, color39, (id 47), (id 48)

set_color color40,[255, 247, 0]
bond (id 52), (id 54)
set_bond stick_color, color40, (id 52), (id 54)

set_color color41,[255, 247, 0]
bond (id 52), (id 62)
set_bond stick_color, color41, (id 52), (id 62)

set_color color42,[255, 245, 0]
bond (id 52), (id 63)
set_bond stick_color, color42, (id 52), (id 63)

set_color color43,[255, 255, 0]
bond (id 52), (id 67)
set_bond stick_color, color43, (id 52), (id 67)

set_color color44,[255, 250, 0]
bond (id 53), (id 55)
set_bond stick_color, color44, (id 53), (id 55)

set_color color45,[255, 252, 0]
bond (id 53), (id 56)
set_bond stick_color, color45, (id 53), (id 56)

set_color color46,[255, 252, 0]
bond (id 53), (id 62)
set_bond stick_color, color46, (id 53), (id 62)

set_color color47,[255, 252, 0]
bond (id 53), (id 57)
set_bond stick_color, color47, (id 53), (id 57)

set_color color48,[255, 255, 0]
bond (id 54), (id 58)
set_bond stick_color, color48, (id 54), (id 58)

set_color color49,[255, 252, 0]
bond (id 54), (id 59)
set_bond stick_color, color49, (id 54), (id 59)

set_color color50,[255, 250, 0]
bond (id 54), (id 55)
set_bond stick_color, color50, (id 54), (id 55)

set_color color51,[255, 245, 0]
bond (id 55), (id 60)
set_bond stick_color, color51, (id 55), (id 60)

set_color color52,[255, 252, 0]
bond (id 55), (id 61)
set_bond stick_color, color52, (id 55), (id 61)

set_color color53,[255, 250, 0]
bond (id 63), (id 65)
set_bond stick_color, color53, (id 63), (id 65)

set_color color54,[255, 255, 0]
bond (id 63), (id 66)
set_bond stick_color, color54, (id 63), (id 66)

set_color color55,[255, 252, 0]
bond (id 63), (id 64)
set_bond stick_color, color55, (id 63), (id 64)

set_color color56,[255, 255, 0]
bond (id 78), (id 82)
set_bond stick_color, color56, (id 78), (id 82)

set_color color57,[255, 252, 0]
bond (id 82), (id 84)
set_bond stick_color, color57, (id 82), (id 84)

set_color color58,[255, 252, 0]
bond (id 82), (id 85)
set_bond stick_color, color58, (id 82), (id 85)

set_color color59,[255, 255, 0]
bond (id 82), (id 83)
set_bond stick_color, color59, (id 82), (id 83)

set_color color60,[255, 247, 0]
bond (id 79), (id 86)
set_bond stick_color, color60, (id 79), (id 86)

set_color color61,[255, 252, 0]
bond (id 86), (id 87)
set_bond stick_color, color61, (id 86), (id 87)

set_color color62,[255, 250, 0]
bond (id 86), (id 95)
set_bond stick_color, color62, (id 86), (id 95)

set_color color63,[255, 245, 0]
bond (id 87), (id 88)
set_bond stick_color, color63, (id 87), (id 88)

set_color color64,[255, 242, 0]
bond (id 88), (id 89)
set_bond stick_color, color64, (id 88), (id 89)

set_color color65,[255, 255, 0]
bond (id 88), (id 90)
set_bond stick_color, color65, (id 88), (id 90)

set_color color66,[255, 247, 0]
bond (id 88), (id 91)
set_bond stick_color, color66, (id 88), (id 91)

set_color color67,[255, 255, 0]
bond (id 91), (id 92)
set_bond stick_color, color67, (id 91), (id 92)

set_color color68,[255, 250, 0]
bond (id 91), (id 93)
set_bond stick_color, color68, (id 91), (id 93)

set_color color69,[255, 255, 0]
bond (id 91), (id 94)
set_bond stick_color, color69, (id 91), (id 94)

set_color color70,[255, 242, 0]
bond (id 113), (id 114)
set_bond stick_color, color70, (id 113), (id 114)

set_color color71,[255, 255, 0]
bond (id 76), (id 113)
set_bond stick_color, color71, (id 76), (id 113)

set_color color72,[255, 227, 0]
bond (id 119), (id 120)
set_bond stick_color, color72, (id 119), (id 120)

set_color color73,[255, 155, 0]
bond (id 121), (id 122)
set_bond stick_color, color73, (id 121), (id 122)

set_color color74,[255, 101, 0]
bond (id 121), (id 126)
set_bond stick_color, color74, (id 121), (id 126)

set_color color75,[255, 160, 0]
bond (id 122), (id 125)
set_bond stick_color, color75, (id 122), (id 125)

set_color color76,[255, 198, 0]
bond (id 122), (id 123)
set_bond stick_color, color76, (id 122), (id 123)

set_color color77,[255, 220, 0]
bond (id 122), (id 124)
set_bond stick_color, color77, (id 122), (id 124)

set_color color78,[255, 37, 0]
bond (id 126), (id 127)
set_bond stick_color, color78, (id 126), (id 127)

set_color color79,[255, 185, 0]
bond (id 126), (id 128)
set_bond stick_color, color79, (id 126), (id 128)

set_color color80,[255, 163, 0]
bond (id 126), (id 129)
set_bond stick_color, color80, (id 126), (id 129)

set_color color81,[255, 9, 0]
bond (id 51), (id 130)
set_bond stick_color, color81, (id 51), (id 130)


