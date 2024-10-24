# Max Energy:       3.78348369
# Min Energy:      -0.59369254
# median Energy:    1.59489557

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 7,id 14

# Adding a representation with the appropriate colorID for each bond

set_color color1,[116, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[139, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[82, 255, 0]
bond (id 5), (id 12)
set_bond stick_color, color3, (id 5), (id 12)

set_color color4,[99, 255, 0]
bond (id 7), (id 15)
set_bond stick_color, color4, (id 7), (id 15)

set_color color5,[72, 255, 0]
bond (id 9), (id 18)
set_bond stick_color, color5, (id 9), (id 18)

set_color color6,[220, 255, 0]
bond (id 12), (id 22)
set_bond stick_color, color6, (id 12), (id 22)

set_color color7,[70, 255, 0]
bond (id 13), (id 23)
set_bond stick_color, color7, (id 13), (id 23)

set_color color8,[113, 255, 0]
bond (id 14), (id 24)
set_bond stick_color, color8, (id 14), (id 24)

set_color color9,[198, 255, 0]
bond (id 14), (id 25)
set_bond stick_color, color9, (id 14), (id 25)

set_color color10,[62, 255, 0]
bond (id 15), (id 26)
set_bond stick_color, color10, (id 15), (id 26)

set_color color11,[50, 255, 0]
bond (id 15), (id 27)
set_bond stick_color, color11, (id 15), (id 27)

set_color color12,[60, 255, 0]
bond (id 15), (id 28)
set_bond stick_color, color12, (id 15), (id 28)

set_color color13,[70, 255, 0]
bond (id 18), (id 31)
set_bond stick_color, color13, (id 18), (id 31)

set_color color14,[73, 255, 0]
bond (id 19), (id 32)
set_bond stick_color, color14, (id 19), (id 32)

set_color color15,[57, 255, 0]
bond (id 24), (id 38)
set_bond stick_color, color15, (id 24), (id 38)

set_color color16,[74, 255, 0]
bond (id 24), (id 39)
set_bond stick_color, color16, (id 24), (id 39)

set_color color17,[73, 255, 0]
bond (id 24), (id 40)
set_bond stick_color, color17, (id 24), (id 40)

set_color color18,[0, 255, 0]
bond (id 25), (id 41)
set_bond stick_color, color18, (id 25), (id 41)

set_color color19,[137, 255, 0]
bond (id 35), (id 48)
set_bond stick_color, color19, (id 35), (id 48)

set_color color20,[73, 255, 0]
bond (id 38), (id 49)
set_bond stick_color, color20, (id 38), (id 49)

set_color color21,[65, 255, 0]
bond (id 38), (id 50)
set_bond stick_color, color21, (id 38), (id 50)

set_color color22,[69, 255, 0]
bond (id 38), (id 51)
set_bond stick_color, color22, (id 38), (id 51)

set_color color23,[73, 255, 0]
bond (id 41), (id 52)
set_bond stick_color, color23, (id 41), (id 52)

set_color color24,[65, 255, 0]
bond (id 41), (id 53)
set_bond stick_color, color24, (id 41), (id 53)

set_color color25,[61, 255, 0]
bond (id 41), (id 54)
set_bond stick_color, color25, (id 41), (id 54)

set_color color26,[71, 255, 0]
bond (id 44), (id 56)
set_bond stick_color, color26, (id 44), (id 56)

set_color color27,[158, 255, 0]
bond (id 48), (id 57)
set_bond stick_color, color27, (id 48), (id 57)

set_color color28,[64, 255, 0]
bond (id 48), (id 58)
set_bond stick_color, color28, (id 48), (id 58)

set_color color29,[65, 255, 0]
bond (id 48), (id 59)
set_bond stick_color, color29, (id 48), (id 59)

set_color color30,[72, 255, 0]
bond (id 49), (id 52)
set_bond stick_color, color30, (id 49), (id 52)

set_color color31,[69, 255, 0]
bond (id 49), (id 60)
set_bond stick_color, color31, (id 49), (id 60)

set_color color32,[71, 255, 0]
bond (id 49), (id 61)
set_bond stick_color, color32, (id 49), (id 61)

set_color color33,[63, 255, 0]
bond (id 52), (id 62)
set_bond stick_color, color33, (id 52), (id 62)

set_color color34,[74, 255, 0]
bond (id 52), (id 63)
set_bond stick_color, color34, (id 52), (id 63)

set_color color35,[55, 255, 0]
bond (id 56), (id 57)
set_bond stick_color, color35, (id 56), (id 57)

set_color color36,[73, 255, 0]
bond (id 56), (id 64)
set_bond stick_color, color36, (id 56), (id 64)

set_color color37,[66, 255, 0]
bond (id 56), (id 65)
set_bond stick_color, color37, (id 56), (id 65)

set_color color38,[67, 255, 0]
bond (id 57), (id 66)
set_bond stick_color, color38, (id 57), (id 66)

set_color color39,[58, 255, 0]
bond (id 57), (id 67)
set_bond stick_color, color39, (id 57), (id 67)

set_color color40,[69, 255, 0]
bond (id 66), (id 68)
set_bond stick_color, color40, (id 66), (id 68)

set_color color41,[69, 255, 0]
bond (id 66), (id 69)
set_bond stick_color, color41, (id 66), (id 69)

set_color color42,[69, 255, 0]
bond (id 66), (id 70)
set_bond stick_color, color42, (id 66), (id 70)

set_color color43,[69, 255, 0]
bond (id 67), (id 71)
set_bond stick_color, color43, (id 67), (id 71)

set_color color44,[69, 255, 0]
bond (id 67), (id 72)
set_bond stick_color, color44, (id 67), (id 72)

set_color color45,[68, 255, 0]
bond (id 67), (id 73)
set_bond stick_color, color45, (id 67), (id 73)

set_color color46,[255, 50, 0]
bond (id 1), (id 7)
set_bond stick_color, color46, (id 1), (id 7)

set_color color47,[102, 255, 0]
bond (id 2), (id 4)
set_bond stick_color, color47, (id 2), (id 4)

set_color color48,[80, 255, 0]
bond (id 2), (id 5)
set_bond stick_color, color48, (id 2), (id 5)

set_color color49,[70, 255, 0]
bond (id 3), (id 8)
set_bond stick_color, color49, (id 3), (id 8)

set_color color50,[77, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color50, (id 3), (id 9)

set_color color51,[71, 255, 0]
bond (id 4), (id 10)
set_bond stick_color, color51, (id 4), (id 10)

set_color color52,[68, 255, 0]
bond (id 4), (id 11)
set_bond stick_color, color52, (id 4), (id 11)

set_color color53,[74, 255, 0]
bond (id 5), (id 13)
set_bond stick_color, color53, (id 5), (id 13)

set_color color54,[255, 0, 0]
bond (id 6), (id 14)
set_bond stick_color, color54, (id 6), (id 14)

set_color color55,[70, 255, 0]
bond (id 8), (id 16)
set_bond stick_color, color55, (id 8), (id 16)

set_color color56,[69, 255, 0]
bond (id 8), (id 17)
set_bond stick_color, color56, (id 8), (id 17)

set_color color57,[73, 255, 0]
bond (id 9), (id 19)
set_bond stick_color, color57, (id 9), (id 19)

set_color color58,[70, 255, 0]
bond (id 10), (id 13)
set_bond stick_color, color58, (id 10), (id 13)

set_color color59,[69, 255, 0]
bond (id 10), (id 20)
set_bond stick_color, color59, (id 10), (id 20)

set_color color60,[71, 255, 0]
bond (id 12), (id 21)
set_bond stick_color, color60, (id 12), (id 21)

set_color color61,[73, 255, 0]
bond (id 16), (id 19)
set_bond stick_color, color61, (id 16), (id 19)

set_color color62,[70, 255, 0]
bond (id 16), (id 29)
set_bond stick_color, color62, (id 16), (id 29)

set_color color63,[94, 255, 0]
bond (id 18), (id 30)
set_bond stick_color, color63, (id 18), (id 30)

set_color color64,[67, 255, 0]
bond (id 21), (id 33)
set_bond stick_color, color64, (id 21), (id 33)

set_color color65,[68, 255, 0]
bond (id 21), (id 34)
set_bond stick_color, color65, (id 21), (id 34)

set_color color66,[217, 255, 0]
bond (id 22), (id 35)
set_bond stick_color, color66, (id 22), (id 35)

set_color color67,[70, 255, 0]
bond (id 22), (id 36)
set_bond stick_color, color67, (id 22), (id 36)

set_color color68,[69, 255, 0]
bond (id 23), (id 33)
set_bond stick_color, color68, (id 23), (id 33)

set_color color69,[69, 255, 0]
bond (id 23), (id 37)
set_bond stick_color, color69, (id 23), (id 37)

set_color color70,[87, 255, 0]
bond (id 30), (id 42)
set_bond stick_color, color70, (id 30), (id 42)

set_color color71,[73, 255, 0]
bond (id 30), (id 43)
set_bond stick_color, color71, (id 30), (id 43)

set_color color72,[71, 255, 0]
bond (id 31), (id 44)
set_bond stick_color, color72, (id 31), (id 44)

set_color color73,[69, 255, 0]
bond (id 31), (id 45)
set_bond stick_color, color73, (id 31), (id 45)

set_color color74,[70, 255, 0]
bond (id 32), (id 42)
set_bond stick_color, color74, (id 32), (id 42)

set_color color75,[69, 255, 0]
bond (id 32), (id 46)
set_bond stick_color, color75, (id 32), (id 46)

set_color color76,[69, 255, 0]
bond (id 33), (id 47)
set_bond stick_color, color76, (id 33), (id 47)

set_color color77,[69, 255, 0]
bond (id 42), (id 55)
set_bond stick_color, color77, (id 42), (id 55)

set_color color78,[255, 163, 0]
bond (id 1), (id 6)
set_bond stick_color, color78, (id 1), (id 6)

set_color color79,[70, 255, 0]
bond (id 1), (id 35)
set_bond stick_color, color79, (id 1), (id 35)

set_color color80,[84, 255, 0]
bond (id 1), (id 44)
set_bond stick_color, color80, (id 1), (id 44)

set_color colorring1,[66, 255, 0]
color colorring1, id 3+8+9+16+17+19+29

set_color colorring2,[91, 255, 0]
color colorring2, id 9+18+19+30+32+42+43+46+55

set_color colorring3,[54, 255, 0]
color colorring3, id 2+4+5+10+11+13+20

set_color colorring4,[56, 255, 0]
color colorring4, id 5+12+13+21+23+33+34+37+47


