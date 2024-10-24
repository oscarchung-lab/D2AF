# Max change:       3.87286131
# Min change:       0.00144875

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
hide sticks, hydrogens

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 222, 0]
bond (id 12), (id 24)
set_bond stick_color, color1, (id 12), (id 24)

set_color color2,[255, 222, 0]
bond (id 24), (id 37)
set_bond stick_color, color2, (id 24), (id 37)

set_color color3,[255, 171, 0]
bond (id 20), (id 35)
set_bond stick_color, color3, (id 20), (id 35)

set_color color4,[255, 151, 0]
bond (id 35), (id 45)
set_bond stick_color, color4, (id 35), (id 45)

set_color color5,[255, 242, 0]
bond (id 27), (id 40)
set_bond stick_color, color5, (id 27), (id 40)

set_color color6,[255, 229, 0]
bond (id 40), (id 48)
set_bond stick_color, color6, (id 40), (id 48)

set_color color7,[255, 219, 0]
bond (id 31), (id 43)
set_bond stick_color, color7, (id 31), (id 43)

set_color color8,[255, 219, 0]
bond (id 43), (id 50)
set_bond stick_color, color8, (id 43), (id 50)

set_color color9,[255, 234, 0]
bond (id 45), (id 51)
set_bond stick_color, color9, (id 45), (id 51)

set_color color10,[255, 241, 0]
bond (id 48), (id 54)
set_bond stick_color, color10, (id 48), (id 54)

set_color color11,[255, 240, 0]
bond (id 58), (id 71)
set_bond stick_color, color11, (id 58), (id 71)

set_color color12,[255, 184, 0]
bond (id 71), (id 85)
set_bond stick_color, color12, (id 71), (id 85)

set_color color13,[255, 198, 0]
bond (id 85), (id 94)
set_bond stick_color, color13, (id 85), (id 94)

set_color color14,[255, 210, 0]
bond (id 73), (id 87)
set_bond stick_color, color14, (id 73), (id 87)

set_color color15,[255, 139, 0]
bond (id 87), (id 96)
set_bond stick_color, color15, (id 87), (id 96)

set_color color16,[255, 183, 0]
bond (id 96), (id 102)
set_bond stick_color, color16, (id 96), (id 102)

set_color color17,[255, 222, 0]
bond (id 90), (id 98)
set_bond stick_color, color17, (id 90), (id 98)

set_color color18,[255, 222, 0]
bond (id 98), (id 103)
set_bond stick_color, color18, (id 98), (id 103)

set_color color19,[255, 247, 0]
bond (id 139), (id 140)
set_bond stick_color, color19, (id 139), (id 140)

set_color color20,[255, 164, 0]
bond (id 140), (id 143)
set_bond stick_color, color20, (id 140), (id 143)

set_color color21,[255, 186, 0]
bond (id 139), (id 141)
set_bond stick_color, color21, (id 139), (id 141)

set_color color22,[255, 186, 0]
bond (id 141), (id 146)
set_bond stick_color, color22, (id 141), (id 146)

set_color color23,[255, 172, 0]
bond (id 143), (id 148)
set_bond stick_color, color23, (id 143), (id 148)

set_color color24,[255, 238, 0]
bond (id 141), (id 145)
set_bond stick_color, color24, (id 141), (id 145)

set_color color25,[255, 219, 0]
bond (id 145), (id 147)
set_bond stick_color, color25, (id 145), (id 147)

set_color color26,[255, 234, 0]
bond (id 143), (id 147)
set_bond stick_color, color26, (id 143), (id 147)

set_color color27,[255, 253, 0]
bond (id 147), (id 150)
set_bond stick_color, color27, (id 147), (id 150)

set_color color28,[255, 46, 0]
bond (id 152), (id 155)
set_bond stick_color, color28, (id 152), (id 155)

set_color color29,[255, 0, 0]
bond (id 152), (id 156)
set_bond stick_color, color29, (id 152), (id 156)

set_color color30,[255, 214, 0]
bond (id 155), (id 158)
set_bond stick_color, color30, (id 155), (id 158)

set_color color31,[255, 254, 0]
bond (id 155), (id 159)
set_bond stick_color, color31, (id 155), (id 159)

set_color color32,[255, 244, 0]
bond (id 155), (id 157)
set_bond stick_color, color32, (id 155), (id 157)

set_color color33,[255, 171, 0]
bond (id 156), (id 161)
set_bond stick_color, color33, (id 156), (id 161)

set_color color34,[255, 220, 0]
bond (id 156), (id 160)
set_bond stick_color, color34, (id 156), (id 160)

set_color color35,[255, 227, 0]
bond (id 160), (id 163)
set_bond stick_color, color35, (id 160), (id 163)

set_color color36,[255, 248, 0]
bond (id 2), (id 4)
set_bond stick_color, color36, (id 2), (id 4)

set_color color37,[255, 248, 0]
bond (id 2), (id 5)
set_bond stick_color, color37, (id 2), (id 5)

set_color color38,[255, 251, 0]
bond (id 4), (id 11)
set_bond stick_color, color38, (id 4), (id 11)

set_color color39,[255, 254, 0]
bond (id 4), (id 10)
set_bond stick_color, color39, (id 4), (id 10)

set_color color40,[255, 252, 0]
bond (id 5), (id 13)
set_bond stick_color, color40, (id 5), (id 13)

set_color color41,[255, 247, 0]
bond (id 6), (id 14)
set_bond stick_color, color41, (id 6), (id 14)

set_color color42,[255, 246, 0]
bond (id 6), (id 15)
set_bond stick_color, color42, (id 6), (id 15)

set_color color43,[255, 249, 0]
bond (id 3), (id 8)
set_bond stick_color, color43, (id 3), (id 8)

set_color color44,[255, 249, 0]
bond (id 8), (id 18)
set_bond stick_color, color44, (id 8), (id 18)

set_color color45,[255, 251, 0]
bond (id 8), (id 19)
set_bond stick_color, color45, (id 8), (id 19)

set_color color46,[255, 254, 0]
bond (id 3), (id 9)
set_bond stick_color, color46, (id 3), (id 9)

set_color color47,[255, 235, 0]
bond (id 9), (id 20)
set_bond stick_color, color47, (id 9), (id 20)

set_color color48,[255, 237, 0]
bond (id 9), (id 21)
set_bond stick_color, color48, (id 9), (id 21)

set_color color49,[255, 249, 0]
bond (id 10), (id 22)
set_bond stick_color, color49, (id 10), (id 22)

set_color color50,[255, 253, 0]
bond (id 10), (id 23)
set_bond stick_color, color50, (id 10), (id 23)

set_color color51,[255, 248, 0]
bond (id 14), (id 26)
set_bond stick_color, color51, (id 14), (id 26)

set_color color52,[255, 254, 0]
bond (id 15), (id 27)
set_bond stick_color, color52, (id 15), (id 27)

set_color color53,[255, 247, 0]
bond (id 15), (id 28)
set_bond stick_color, color53, (id 15), (id 28)

set_color color54,[255, 242, 0]
bond (id 7), (id 16)
set_bond stick_color, color54, (id 7), (id 16)

set_color color55,[255, 249, 0]
bond (id 16), (id 29)
set_bond stick_color, color55, (id 16), (id 29)

set_color color56,[255, 245, 0]
bond (id 16), (id 30)
set_bond stick_color, color56, (id 16), (id 30)

set_color color57,[255, 248, 0]
bond (id 7), (id 17)
set_bond stick_color, color57, (id 7), (id 17)

set_color color58,[255, 245, 0]
bond (id 17), (id 31)
set_bond stick_color, color58, (id 17), (id 31)

set_color color59,[255, 252, 0]
bond (id 17), (id 32)
set_bond stick_color, color59, (id 17), (id 32)

set_color color60,[255, 254, 0]
bond (id 18), (id 33)
set_bond stick_color, color60, (id 18), (id 33)

set_color color61,[255, 251, 0]
bond (id 18), (id 34)
set_bond stick_color, color61, (id 18), (id 34)

set_color color62,[255, 246, 0]
bond (id 20), (id 33)
set_bond stick_color, color62, (id 20), (id 33)

set_color color63,[255, 251, 0]
bond (id 12), (id 22)
set_bond stick_color, color63, (id 12), (id 22)

set_color color64,[255, 254, 0]
bond (id 14), (id 25)
set_bond stick_color, color64, (id 14), (id 25)

set_color color65,[255, 246, 0]
bond (id 25), (id 38)
set_bond stick_color, color65, (id 25), (id 38)

set_color color66,[255, 250, 0]
bond (id 25), (id 39)
set_bond stick_color, color66, (id 25), (id 39)

set_color color67,[255, 252, 0]
bond (id 29), (id 41)
set_bond stick_color, color67, (id 29), (id 41)

set_color color68,[255, 254, 0]
bond (id 29), (id 42)
set_bond stick_color, color68, (id 29), (id 42)

set_color color69,[255, 248, 0]
bond (id 33), (id 44)
set_bond stick_color, color69, (id 33), (id 44)

set_color color70,[255, 250, 0]
bond (id 27), (id 38)
set_bond stick_color, color70, (id 27), (id 38)

set_color color71,[255, 253, 0]
bond (id 38), (id 47)
set_bond stick_color, color71, (id 38), (id 47)

set_color color72,[255, 246, 0]
bond (id 31), (id 41)
set_bond stick_color, color72, (id 31), (id 41)

set_color color73,[255, 246, 0]
bond (id 41), (id 49)
set_bond stick_color, color73, (id 41), (id 49)

set_color color74,[255, 231, 0]
bond (id 99), (id 104)
set_bond stick_color, color74, (id 99), (id 104)

set_color color75,[255, 248, 0]
bond (id 99), (id 105)
set_bond stick_color, color75, (id 99), (id 105)

set_color color76,[255, 248, 0]
bond (id 100), (id 106)
set_bond stick_color, color76, (id 100), (id 106)

set_color color77,[255, 249, 0]
bond (id 100), (id 107)
set_bond stick_color, color77, (id 100), (id 107)

set_color color78,[255, 250, 0]
bond (id 94), (id 101)
set_bond stick_color, color78, (id 94), (id 101)

set_color color79,[255, 251, 0]
bond (id 101), (id 108)
set_bond stick_color, color79, (id 101), (id 108)

set_color color80,[255, 251, 0]
bond (id 101), (id 109)
set_bond stick_color, color80, (id 101), (id 109)

set_color color81,[255, 232, 0]
bond (id 104), (id 115)
set_bond stick_color, color81, (id 104), (id 115)

set_color color82,[255, 246, 0]
bond (id 105), (id 116)
set_bond stick_color, color82, (id 105), (id 116)

set_color color83,[255, 250, 0]
bond (id 106), (id 119)
set_bond stick_color, color83, (id 106), (id 119)

set_color color84,[255, 251, 0]
bond (id 108), (id 119)
set_bond stick_color, color84, (id 108), (id 119)

set_color color85,[255, 254, 0]
bond (id 108), (id 120)
set_bond stick_color, color85, (id 108), (id 120)

set_color color86,[255, 252, 0]
bond (id 102), (id 110)
set_bond stick_color, color86, (id 102), (id 110)

set_color color87,[255, 246, 0]
bond (id 110), (id 121)
set_bond stick_color, color87, (id 110), (id 121)

set_color color88,[255, 248, 0]
bond (id 110), (id 122)
set_bond stick_color, color88, (id 110), (id 122)

set_color color89,[255, 247, 0]
bond (id 102), (id 111)
set_bond stick_color, color89, (id 102), (id 111)

set_color color90,[255, 250, 0]
bond (id 111), (id 123)
set_bond stick_color, color90, (id 111), (id 123)

set_color color91,[255, 250, 0]
bond (id 111), (id 124)
set_bond stick_color, color91, (id 111), (id 124)

set_color color92,[255, 247, 0]
bond (id 103), (id 112)
set_bond stick_color, color92, (id 103), (id 112)

set_color color93,[255, 249, 0]
bond (id 112), (id 125)
set_bond stick_color, color93, (id 112), (id 125)

set_color color94,[255, 252, 0]
bond (id 112), (id 126)
set_bond stick_color, color94, (id 112), (id 126)

set_color color95,[255, 247, 0]
bond (id 103), (id 113)
set_bond stick_color, color95, (id 103), (id 113)

set_color color96,[255, 248, 0]
bond (id 113), (id 127)
set_bond stick_color, color96, (id 113), (id 127)

set_color color97,[255, 247, 0]
bond (id 113), (id 128)
set_bond stick_color, color97, (id 113), (id 128)

set_color color98,[255, 252, 0]
bond (id 104), (id 114)
set_bond stick_color, color98, (id 104), (id 114)

set_color color99,[255, 245, 0]
bond (id 114), (id 129)
set_bond stick_color, color99, (id 114), (id 129)

set_color color100,[255, 250, 0]
bond (id 116), (id 130)
set_bond stick_color, color100, (id 116), (id 130)

set_color color101,[255, 250, 0]
bond (id 116), (id 129)
set_bond stick_color, color101, (id 116), (id 129)

set_color color102,[255, 251, 0]
bond (id 119), (id 131)
set_bond stick_color, color102, (id 119), (id 131)

set_color color103,[255, 253, 0]
bond (id 123), (id 132)
set_bond stick_color, color103, (id 123), (id 132)

set_color color104,[255, 254, 0]
bond (id 123), (id 133)
set_bond stick_color, color104, (id 123), (id 133)

set_color color105,[255, 253, 0]
bond (id 127), (id 134)
set_bond stick_color, color105, (id 127), (id 134)

set_color color106,[255, 250, 0]
bond (id 127), (id 135)
set_bond stick_color, color106, (id 127), (id 135)

set_color color107,[255, 251, 0]
bond (id 129), (id 136)
set_bond stick_color, color107, (id 129), (id 136)

set_color color108,[255, 248, 0]
bond (id 121), (id 132)
set_bond stick_color, color108, (id 121), (id 132)

set_color color109,[255, 248, 0]
bond (id 132), (id 137)
set_bond stick_color, color109, (id 132), (id 137)

set_color color110,[255, 245, 0]
bond (id 125), (id 134)
set_bond stick_color, color110, (id 125), (id 134)

set_color color111,[255, 245, 0]
bond (id 134), (id 138)
set_bond stick_color, color111, (id 134), (id 138)


