# Max change:      -0.00348919
# Min change:      -6.34087825

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[91, 255, 0]
bond (id 2), (id 11)
set_bond stick_color, color1, (id 2), (id 11)

set_color color2,[6, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color2, (id 11), (id 12)

set_color color3,[129, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color3, (id 12), (id 14)

set_color color4,[208, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color4, (id 12), (id 13)

set_color color5,[74, 255, 0]
bond (id 12), (id 119)
set_bond stick_color, color5, (id 12), (id 119)

set_color color6,[186, 255, 0]
bond (id 16), (id 19)
set_bond stick_color, color6, (id 16), (id 19)

set_color color7,[248, 255, 0]
bond (id 16), (id 115)
set_bond stick_color, color7, (id 16), (id 115)

set_color color8,[223, 255, 0]
bond (id 16), (id 17)
set_bond stick_color, color8, (id 16), (id 17)

set_color color9,[243, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color9, (id 17), (id 18)

set_color color10,[231, 255, 0]
bond (id 17), (id 35)
set_bond stick_color, color10, (id 17), (id 35)

set_color color11,[205, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color11, (id 19), (id 20)

set_color color12,[196, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color12, (id 19), (id 21)

set_color color13,[239, 255, 0]
bond (id 21), (id 22)
set_bond stick_color, color13, (id 21), (id 22)

set_color color14,[232, 255, 0]
bond (id 21), (id 23)
set_bond stick_color, color14, (id 21), (id 23)

set_color color15,[233, 255, 0]
bond (id 21), (id 113)
set_bond stick_color, color15, (id 21), (id 113)

set_color color16,[249, 255, 0]
bond (id 22), (id 25)
set_bond stick_color, color16, (id 22), (id 25)

set_color color17,[242, 255, 0]
bond (id 22), (id 26)
set_bond stick_color, color17, (id 22), (id 26)

set_color color18,[244, 255, 0]
bond (id 22), (id 27)
set_bond stick_color, color18, (id 22), (id 27)

set_color color19,[247, 255, 0]
bond (id 24), (id 28)
set_bond stick_color, color19, (id 24), (id 28)

set_color color20,[249, 255, 0]
bond (id 24), (id 30)
set_bond stick_color, color20, (id 24), (id 30)

set_color color21,[252, 255, 0]
bond (id 24), (id 29)
set_bond stick_color, color21, (id 24), (id 29)

set_color color22,[249, 255, 0]
bond (id 24), (id 113)
set_bond stick_color, color22, (id 24), (id 113)

set_color color23,[250, 255, 0]
bond (id 25), (id 28)
set_bond stick_color, color23, (id 25), (id 28)

set_color color24,[251, 255, 0]
bond (id 25), (id 31)
set_bond stick_color, color24, (id 25), (id 31)

set_color color25,[254, 255, 0]
bond (id 28), (id 33)
set_bond stick_color, color25, (id 28), (id 33)

set_color color26,[254, 255, 0]
bond (id 28), (id 34)
set_bond stick_color, color26, (id 28), (id 34)

set_color color27,[238, 255, 0]
bond (id 35), (id 37)
set_bond stick_color, color27, (id 35), (id 37)

set_color color28,[244, 255, 0]
bond (id 35), (id 36)
set_bond stick_color, color28, (id 35), (id 36)

set_color color29,[239, 255, 0]
bond (id 35), (id 38)
set_bond stick_color, color29, (id 35), (id 38)

set_color color30,[250, 255, 0]
bond (id 37), (id 51)
set_bond stick_color, color30, (id 37), (id 51)

set_color color31,[251, 255, 0]
bond (id 37), (id 62)
set_bond stick_color, color31, (id 37), (id 62)

set_color color32,[249, 255, 0]
bond (id 38), (id 39)
set_bond stick_color, color32, (id 38), (id 39)

set_color color33,[234, 255, 0]
bond (id 38), (id 43)
set_bond stick_color, color33, (id 38), (id 43)

set_color color34,[250, 255, 0]
bond (id 38), (id 47)
set_bond stick_color, color34, (id 38), (id 47)

set_color color35,[251, 255, 0]
bond (id 39), (id 42)
set_bond stick_color, color35, (id 39), (id 42)

set_color color36,[254, 255, 0]
bond (id 39), (id 40)
set_bond stick_color, color36, (id 39), (id 40)

set_color color37,[252, 255, 0]
bond (id 39), (id 41)
set_bond stick_color, color37, (id 39), (id 41)

set_color color38,[229, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color38, (id 43), (id 44)

set_color color39,[247, 255, 0]
bond (id 43), (id 46)
set_bond stick_color, color39, (id 43), (id 46)

set_color color40,[250, 255, 0]
bond (id 47), (id 48)
set_bond stick_color, color40, (id 47), (id 48)

set_color color41,[247, 255, 0]
bond (id 47), (id 50)
set_bond stick_color, color41, (id 47), (id 50)

set_color color42,[250, 255, 0]
bond (id 47), (id 49)
set_bond stick_color, color42, (id 47), (id 49)

set_color color43,[245, 255, 0]
bond (id 52), (id 62)
set_bond stick_color, color43, (id 52), (id 62)

set_color color44,[246, 255, 0]
bond (id 52), (id 67)
set_bond stick_color, color44, (id 52), (id 67)

set_color color45,[247, 255, 0]
bond (id 52), (id 63)
set_bond stick_color, color45, (id 52), (id 63)

set_color color46,[244, 255, 0]
bond (id 53), (id 55)
set_bond stick_color, color46, (id 53), (id 55)

set_color color47,[254, 255, 0]
bond (id 53), (id 56)
set_bond stick_color, color47, (id 53), (id 56)

set_color color48,[251, 255, 0]
bond (id 53), (id 57)
set_bond stick_color, color48, (id 53), (id 57)

set_color color49,[249, 255, 0]
bond (id 53), (id 62)
set_bond stick_color, color49, (id 53), (id 62)

set_color color50,[250, 255, 0]
bond (id 52), (id 54)
set_bond stick_color, color50, (id 52), (id 54)

set_color color51,[246, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color51, (id 54), (id 55)

set_color color52,[251, 255, 0]
bond (id 55), (id 61)
set_bond stick_color, color52, (id 55), (id 61)

set_color color53,[253, 255, 0]
bond (id 63), (id 64)
set_bond stick_color, color53, (id 63), (id 64)

set_color color54,[252, 255, 0]
bond (id 63), (id 66)
set_bond stick_color, color54, (id 63), (id 66)

set_color color55,[253, 255, 0]
bond (id 63), (id 65)
set_bond stick_color, color55, (id 63), (id 65)

set_color color56,[252, 255, 0]
bond (id 78), (id 82)
set_bond stick_color, color56, (id 78), (id 82)

set_color color57,[251, 255, 0]
bond (id 82), (id 83)
set_bond stick_color, color57, (id 82), (id 83)

set_color color58,[254, 255, 0]
bond (id 82), (id 84)
set_bond stick_color, color58, (id 82), (id 84)

set_color color59,[254, 255, 0]
bond (id 82), (id 85)
set_bond stick_color, color59, (id 82), (id 85)

set_color color60,[238, 255, 0]
bond (id 86), (id 87)
set_bond stick_color, color60, (id 86), (id 87)

set_color color61,[249, 255, 0]
bond (id 86), (id 95)
set_bond stick_color, color61, (id 86), (id 95)

set_color color62,[238, 255, 0]
bond (id 87), (id 88)
set_bond stick_color, color62, (id 87), (id 88)

set_color color63,[247, 255, 0]
bond (id 88), (id 91)
set_bond stick_color, color63, (id 88), (id 91)

set_color color64,[251, 255, 0]
bond (id 88), (id 89)
set_bond stick_color, color64, (id 88), (id 89)

set_color color65,[250, 255, 0]
bond (id 88), (id 90)
set_bond stick_color, color65, (id 88), (id 90)

set_color color66,[250, 255, 0]
bond (id 91), (id 94)
set_bond stick_color, color66, (id 91), (id 94)

set_color color67,[254, 255, 0]
bond (id 91), (id 92)
set_bond stick_color, color67, (id 91), (id 92)

set_color color68,[251, 255, 0]
bond (id 91), (id 93)
set_bond stick_color, color68, (id 91), (id 93)

set_color color69,[246, 255, 0]
bond (id 76), (id 113)
set_bond stick_color, color69, (id 76), (id 113)

set_color color70,[254, 255, 0]
bond (id 113), (id 114)
set_bond stick_color, color70, (id 113), (id 114)

set_color color71,[15, 255, 0]
bond (id 1), (id 116)
set_bond stick_color, color71, (id 1), (id 116)

set_color color72,[62, 255, 0]
bond (id 116), (id 117)
set_bond stick_color, color72, (id 116), (id 117)

set_color color73,[66, 255, 0]
bond (id 116), (id 118)
set_bond stick_color, color73, (id 116), (id 118)

set_color color74,[0, 255, 0]
bond (id 119), (id 121)
set_bond stick_color, color74, (id 119), (id 121)

set_color color75,[183, 255, 0]
bond (id 119), (id 120)
set_bond stick_color, color75, (id 119), (id 120)

set_color color76,[143, 255, 0]
bond (id 121), (id 122)
set_bond stick_color, color76, (id 121), (id 122)

set_color color77,[113, 255, 0]
bond (id 121), (id 126)
set_bond stick_color, color77, (id 121), (id 126)

set_color color78,[193, 255, 0]
bond (id 122), (id 123)
set_bond stick_color, color78, (id 122), (id 123)

set_color color79,[221, 255, 0]
bond (id 122), (id 124)
set_bond stick_color, color79, (id 122), (id 124)

set_color color80,[76, 255, 0]
bond (id 126), (id 128)
set_bond stick_color, color80, (id 126), (id 128)

set_color color81,[186, 255, 0]
bond (id 126), (id 129)
set_bond stick_color, color81, (id 126), (id 129)


