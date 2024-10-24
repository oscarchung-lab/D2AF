# Max Energy:       6.35500000
# Min Energy:      -0.84500000
# median Energy:    2.75500000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[206, 255, 0]
bond (id 3), (id 30)
set_bond stick_color, color1, (id 3), (id 30)
set_color color2,[157, 255, 0]
bond (id 3), (id 43)
set_bond stick_color, color2, (id 3), (id 43)
set_color color3,[48, 255, 0]
bond (id 3), (id 65)
set_bond stick_color, color3, (id 3), (id 65)
set_color color4,[168, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color4, (id 4), (id 5)
set_color color5,[169, 255, 0]
bond (id 4), (id 57)
set_bond stick_color, color5, (id 4), (id 57)
set_color color6,[124, 255, 0]
bond (id 4), (id 61)
set_bond stick_color, color6, (id 4), (id 61)
set_color color7,[145, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color7, (id 5), (id 6)
set_color color8,[150, 255, 0]
bond (id 5), (id 7)
set_bond stick_color, color8, (id 5), (id 7)
set_color color9,[150, 255, 0]
bond (id 5), (id 8)
set_bond stick_color, color9, (id 5), (id 8)
set_color color10,[148, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color10, (id 8), (id 9)
set_color color11,[149, 255, 0]
bond (id 8), (id 17)
set_bond stick_color, color11, (id 8), (id 17)
set_color color12,[145, 255, 0]
bond (id 9), (id 10)
set_bond stick_color, color12, (id 9), (id 10)
set_color color13,[145, 255, 0]
bond (id 9), (id 11)
set_bond stick_color, color13, (id 9), (id 11)
set_color color14,[147, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color14, (id 11), (id 12)
set_color color15,[148, 255, 0]
bond (id 11), (id 13)
set_bond stick_color, color15, (id 11), (id 13)
set_color color16,[148, 255, 0]
bond (id 13), (id 14)
set_bond stick_color, color16, (id 13), (id 14)
set_color color17,[147, 255, 0]
bond (id 13), (id 15)
set_bond stick_color, color17, (id 13), (id 15)
set_color color18,[148, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color18, (id 15), (id 16)
set_color color19,[147, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color19, (id 15), (id 17)
set_color color20,[147, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color20, (id 17), (id 18)
set_color color21,[153, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color21, (id 19), (id 20)
set_color color22,[159, 255, 0]
bond (id 19), (id 28)
set_bond stick_color, color22, (id 19), (id 28)
set_color color23,[178, 255, 0]
bond (id 19), (id 57)
set_bond stick_color, color23, (id 19), (id 57)
set_color color24,[144, 255, 0]
bond (id 20), (id 21)
set_bond stick_color, color24, (id 20), (id 21)
set_color color25,[147, 255, 0]
bond (id 20), (id 22)
set_bond stick_color, color25, (id 20), (id 22)
set_color color26,[147, 255, 0]
bond (id 22), (id 23)
set_bond stick_color, color26, (id 22), (id 23)
set_color color27,[149, 255, 0]
bond (id 22), (id 24)
set_bond stick_color, color27, (id 22), (id 24)
set_color color28,[149, 255, 0]
bond (id 24), (id 25)
set_bond stick_color, color28, (id 24), (id 25)
set_color color29,[147, 255, 0]
bond (id 24), (id 26)
set_bond stick_color, color29, (id 24), (id 26)
set_color color30,[145, 255, 0]
bond (id 26), (id 27)
set_bond stick_color, color30, (id 26), (id 27)
set_color color31,[144, 255, 0]
bond (id 26), (id 28)
set_bond stick_color, color31, (id 26), (id 28)
set_color color32,[146, 255, 0]
bond (id 28), (id 29)
set_bond stick_color, color32, (id 28), (id 29)
set_color color33,[205, 255, 0]
bond (id 30), (id 31)
set_bond stick_color, color33, (id 30), (id 31)
set_color color34,[229, 255, 0]
bond (id 30), (id 32)
set_bond stick_color, color34, (id 30), (id 32)
set_color color35,[159, 255, 0]
bond (id 32), (id 33)
set_bond stick_color, color35, (id 32), (id 33)
set_color color36,[128, 255, 0]
bond (id 32), (id 41)
set_bond stick_color, color36, (id 32), (id 41)
set_color color37,[145, 255, 0]
bond (id 33), (id 34)
set_bond stick_color, color37, (id 33), (id 34)
set_color color38,[148, 255, 0]
bond (id 33), (id 35)
set_bond stick_color, color38, (id 33), (id 35)
set_color color39,[152, 255, 0]
bond (id 35), (id 36)
set_bond stick_color, color39, (id 35), (id 36)
set_color color40,[156, 255, 0]
bond (id 35), (id 37)
set_bond stick_color, color40, (id 35), (id 37)
set_color color41,[156, 255, 0]
bond (id 37), (id 38)
set_bond stick_color, color41, (id 37), (id 38)
set_color color42,[159, 255, 0]
bond (id 37), (id 39)
set_bond stick_color, color42, (id 37), (id 39)
set_color color43,[149, 255, 0]
bond (id 39), (id 40)
set_bond stick_color, color43, (id 39), (id 40)
set_color color44,[149, 255, 0]
bond (id 39), (id 41)
set_bond stick_color, color44, (id 39), (id 41)
set_color color45,[149, 255, 0]
bond (id 41), (id 42)
set_bond stick_color, color45, (id 41), (id 42)
set_color color46,[145, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color46, (id 43), (id 44)
set_color color47,[148, 255, 0]
bond (id 43), (id 45)
set_bond stick_color, color47, (id 43), (id 45)
set_color color48,[164, 255, 0]
bond (id 43), (id 46)
set_bond stick_color, color48, (id 43), (id 46)
set_color color49,[158, 255, 0]
bond (id 46), (id 47)
set_bond stick_color, color49, (id 46), (id 47)
set_color color50,[157, 255, 0]
bond (id 46), (id 55)
set_bond stick_color, color50, (id 46), (id 55)
set_color color51,[153, 255, 0]
bond (id 47), (id 48)
set_bond stick_color, color51, (id 47), (id 48)
set_color color52,[153, 255, 0]
bond (id 47), (id 49)
set_bond stick_color, color52, (id 47), (id 49)
set_color color53,[149, 255, 0]
bond (id 49), (id 50)
set_bond stick_color, color53, (id 49), (id 50)
set_color color54,[147, 255, 0]
bond (id 49), (id 51)
set_bond stick_color, color54, (id 49), (id 51)
set_color color55,[148, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color55, (id 51), (id 52)
set_color color56,[147, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color56, (id 51), (id 53)
set_color color57,[148, 255, 0]
bond (id 53), (id 54)
set_bond stick_color, color57, (id 53), (id 54)
set_color color58,[147, 255, 0]
bond (id 53), (id 55)
set_bond stick_color, color58, (id 53), (id 55)
set_color color59,[147, 255, 0]
bond (id 55), (id 56)
set_bond stick_color, color59, (id 55), (id 56)
set_color color60,[140, 255, 0]
bond (id 57), (id 58)
set_bond stick_color, color60, (id 57), (id 58)
set_color color61,[141, 255, 0]
bond (id 57), (id 64)
set_bond stick_color, color61, (id 57), (id 64)
set_color color62,[124, 255, 0]
bond (id 59), (id 60)
set_bond stick_color, color62, (id 59), (id 60)
set_color color63,[101, 255, 0]
bond (id 59), (id 61)
set_bond stick_color, color63, (id 59), (id 61)
set_color color64,[175, 255, 0]
bond (id 59), (id 62)
set_bond stick_color, color64, (id 59), (id 62)
set_color color65,[104, 255, 0]
bond (id 2), (id 61)
set_bond stick_color, color65, (id 2), (id 61)
set_color color66,[143, 255, 0]
bond (id 62), (id 63)
set_bond stick_color, color66, (id 62), (id 63)
set_color color67,[71, 255, 0]
bond (id 62), (id 65)
set_bond stick_color, color67, (id 62), (id 65)
set_color color68,[100, 255, 0]
bond (id 1), (id 65)
set_bond stick_color, color68, (id 1), (id 65)

