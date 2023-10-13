# Max change:      -0.05000000
# Min change:      -6.40000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[93, 255, 0]
bond (id 2), (id 11)
set_bond stick_color, color1, (id 2), (id 11)

set_color color2,[9, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color2, (id 11), (id 12)

set_color color3,[131, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color3, (id 12), (id 14)

set_color color4,[207, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color4, (id 12), (id 13)

set_color color5,[75, 255, 0]
bond (id 12), (id 119)
set_bond stick_color, color5, (id 12), (id 119)

set_color color6,[187, 255, 0]
bond (id 16), (id 19)
set_bond stick_color, color6, (id 16), (id 19)

set_color color7,[249, 255, 0]
bond (id 16), (id 115)
set_bond stick_color, color7, (id 16), (id 115)

set_color color8,[225, 255, 0]
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

set_color color12,[197, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color12, (id 19), (id 21)

set_color color13,[239, 255, 0]
bond (id 21), (id 22)
set_bond stick_color, color13, (id 21), (id 22)

set_color color14,[231, 255, 0]
bond (id 21), (id 23)
set_bond stick_color, color14, (id 21), (id 23)

set_color color15,[233, 255, 0]
bond (id 21), (id 113)
set_bond stick_color, color15, (id 21), (id 113)

set_color color16,[249, 255, 0]
bond (id 22), (id 25)
set_bond stick_color, color16, (id 22), (id 25)

set_color color17,[243, 255, 0]
bond (id 22), (id 26)
set_bond stick_color, color17, (id 22), (id 26)

set_color color18,[245, 255, 0]
bond (id 22), (id 27)
set_bond stick_color, color18, (id 22), (id 27)

set_color color19,[247, 255, 0]
bond (id 24), (id 28)
set_bond stick_color, color19, (id 24), (id 28)

set_color color20,[249, 255, 0]
bond (id 24), (id 30)
set_bond stick_color, color20, (id 24), (id 30)

set_color color21,[253, 255, 0]
bond (id 24), (id 29)
set_bond stick_color, color21, (id 24), (id 29)

set_color color22,[251, 255, 0]
bond (id 25), (id 31)
set_bond stick_color, color22, (id 25), (id 31)

set_color color23,[251, 255, 0]
bond (id 25), (id 28)
set_bond stick_color, color23, (id 25), (id 28)

set_color color24,[239, 255, 0]
bond (id 35), (id 37)
set_bond stick_color, color24, (id 35), (id 37)

set_color color25,[245, 255, 0]
bond (id 35), (id 36)
set_bond stick_color, color25, (id 35), (id 36)

set_color color26,[241, 255, 0]
bond (id 35), (id 38)
set_bond stick_color, color26, (id 35), (id 38)

set_color color27,[251, 255, 0]
bond (id 37), (id 51)
set_bond stick_color, color27, (id 37), (id 51)

set_color color28,[251, 255, 0]
bond (id 37), (id 62)
set_bond stick_color, color28, (id 37), (id 62)

set_color color29,[251, 255, 0]
bond (id 38), (id 39)
set_bond stick_color, color29, (id 38), (id 39)

set_color color30,[235, 255, 0]
bond (id 38), (id 43)
set_bond stick_color, color30, (id 38), (id 43)

set_color color31,[251, 255, 0]
bond (id 38), (id 47)
set_bond stick_color, color31, (id 38), (id 47)

set_color color32,[251, 255, 0]
bond (id 39), (id 42)
set_bond stick_color, color32, (id 39), (id 42)

set_color color33,[253, 255, 0]
bond (id 39), (id 41)
set_bond stick_color, color33, (id 39), (id 41)

set_color color34,[229, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color34, (id 43), (id 44)

set_color color35,[247, 255, 0]
bond (id 43), (id 46)
set_bond stick_color, color35, (id 43), (id 46)

set_color color36,[251, 255, 0]
bond (id 47), (id 48)
set_bond stick_color, color36, (id 47), (id 48)

set_color color37,[249, 255, 0]
bond (id 47), (id 50)
set_bond stick_color, color37, (id 47), (id 50)

set_color color38,[251, 255, 0]
bond (id 47), (id 49)
set_bond stick_color, color38, (id 47), (id 49)

set_color color39,[245, 255, 0]
bond (id 52), (id 62)
set_bond stick_color, color39, (id 52), (id 62)

set_color color40,[247, 255, 0]
bond (id 52), (id 67)
set_bond stick_color, color40, (id 52), (id 67)

set_color color41,[249, 255, 0]
bond (id 52), (id 63)
set_bond stick_color, color41, (id 52), (id 63)

set_color color42,[245, 255, 0]
bond (id 53), (id 55)
set_bond stick_color, color42, (id 53), (id 55)

set_color color43,[251, 255, 0]
bond (id 53), (id 57)
set_bond stick_color, color43, (id 53), (id 57)

set_color color44,[251, 255, 0]
bond (id 52), (id 54)
set_bond stick_color, color44, (id 52), (id 54)

set_color color45,[245, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color45, (id 54), (id 55)

set_color color46,[251, 255, 0]
bond (id 55), (id 61)
set_bond stick_color, color46, (id 55), (id 61)

set_color color47,[249, 255, 0]
bond (id 53), (id 62)
set_bond stick_color, color47, (id 53), (id 62)

set_color color48,[253, 255, 0]
bond (id 63), (id 64)
set_bond stick_color, color48, (id 63), (id 64)

set_color color49,[253, 255, 0]
bond (id 63), (id 65)
set_bond stick_color, color49, (id 63), (id 65)

set_color color50,[253, 255, 0]
bond (id 63), (id 66)
set_bond stick_color, color50, (id 63), (id 66)

set_color color51,[253, 255, 0]
bond (id 78), (id 82)
set_bond stick_color, color51, (id 78), (id 82)

set_color color52,[253, 255, 0]
bond (id 82), (id 83)
set_bond stick_color, color52, (id 82), (id 83)

set_color color53,[239, 255, 0]
bond (id 86), (id 87)
set_bond stick_color, color53, (id 86), (id 87)

set_color color54,[249, 255, 0]
bond (id 86), (id 95)
set_bond stick_color, color54, (id 86), (id 95)

set_color color55,[239, 255, 0]
bond (id 87), (id 88)
set_bond stick_color, color55, (id 87), (id 88)

set_color color56,[247, 255, 0]
bond (id 88), (id 91)
set_bond stick_color, color56, (id 88), (id 91)

set_color color57,[251, 255, 0]
bond (id 88), (id 89)
set_bond stick_color, color57, (id 88), (id 89)

set_color color58,[249, 255, 0]
bond (id 88), (id 90)
set_bond stick_color, color58, (id 88), (id 90)

set_color color59,[251, 255, 0]
bond (id 91), (id 93)
set_bond stick_color, color59, (id 91), (id 93)

set_color color60,[251, 255, 0]
bond (id 91), (id 94)
set_bond stick_color, color60, (id 91), (id 94)

set_color color61,[247, 255, 0]
bond (id 76), (id 113)
set_bond stick_color, color61, (id 76), (id 113)

set_color color62,[251, 255, 0]
bond (id 24), (id 113)
set_bond stick_color, color62, (id 24), (id 113)

set_color color63,[15, 255, 0]
bond (id 1), (id 116)
set_bond stick_color, color63, (id 1), (id 116)

set_color color64,[63, 255, 0]
bond (id 116), (id 117)
set_bond stick_color, color64, (id 116), (id 117)

set_color color65,[67, 255, 0]
bond (id 116), (id 118)
set_bond stick_color, color65, (id 116), (id 118)

set_color color66,[0, 255, 0]
bond (id 119), (id 121)
set_bond stick_color, color66, (id 119), (id 121)

set_color color67,[183, 255, 0]
bond (id 119), (id 120)
set_bond stick_color, color67, (id 119), (id 120)

set_color color68,[143, 255, 0]
bond (id 121), (id 122)
set_bond stick_color, color68, (id 121), (id 122)

set_color color69,[113, 255, 0]
bond (id 121), (id 126)
set_bond stick_color, color69, (id 121), (id 126)

set_color color70,[193, 255, 0]
bond (id 122), (id 123)
set_bond stick_color, color70, (id 122), (id 123)

set_color color71,[221, 255, 0]
bond (id 122), (id 124)
set_bond stick_color, color71, (id 122), (id 124)

set_color color72,[77, 255, 0]
bond (id 126), (id 128)
set_bond stick_color, color72, (id 126), (id 128)

set_color color73,[187, 255, 0]
bond (id 126), (id 129)
set_bond stick_color, color73, (id 126), (id 129)


