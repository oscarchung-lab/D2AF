# Max Energy:       3.62782607
# Min Energy:      -0.14480672
# median Energy:    1.74150968

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
hide sticks, hydrogens

# Adding a representation with the appropriate colorID for each bond

set_color color1,[27, 255, 0]
bond (id 12), (id 24)
set_bond stick_color, color1, (id 12), (id 24)
set_color color2,[49, 255, 0]
bond (id 20), (id 35)
set_bond stick_color, color2, (id 20), (id 35)
set_color color3,[45, 255, 0]
bond (id 24), (id 37)
set_bond stick_color, color3, (id 24), (id 37)
set_color color4,[50, 255, 0]
bond (id 27), (id 40)
set_bond stick_color, color4, (id 27), (id 40)
set_color color5,[122, 255, 0]
bond (id 31), (id 43)
set_bond stick_color, color5, (id 31), (id 43)
set_color color6,[43, 255, 0]
bond (id 35), (id 45)
set_bond stick_color, color6, (id 35), (id 45)
set_color color7,[42, 255, 0]
bond (id 37), (id 46)
set_bond stick_color, color7, (id 37), (id 46)
set_color color8,[43, 255, 0]
bond (id 40), (id 48)
set_bond stick_color, color8, (id 40), (id 48)
set_color color9,[59, 255, 0]
bond (id 43), (id 50)
set_bond stick_color, color9, (id 43), (id 50)
set_color color10,[47, 255, 0]
bond (id 45), (id 51)
set_bond stick_color, color10, (id 45), (id 51)
set_color color11,[52, 255, 0]
bond (id 48), (id 54)
set_bond stick_color, color11, (id 48), (id 54)
set_color color12,[84, 255, 0]
bond (id 50), (id 55)
set_bond stick_color, color12, (id 50), (id 55)
set_color color13,[43, 255, 0]
bond (id 58), (id 71)
set_bond stick_color, color13, (id 58), (id 71)
set_color color14,[69, 255, 0]
bond (id 66), (id 82)
set_bond stick_color, color14, (id 66), (id 82)
set_color color15,[40, 255, 0]
bond (id 71), (id 85)
set_bond stick_color, color15, (id 71), (id 85)
set_color color16,[55, 255, 0]
bond (id 73), (id 87)
set_bond stick_color, color16, (id 73), (id 87)
set_color color17,[102, 255, 0]
bond (id 77), (id 90)
set_bond stick_color, color17, (id 77), (id 90)
set_color color18,[58, 255, 0]
bond (id 82), (id 93)
set_bond stick_color, color18, (id 82), (id 93)
set_color color19,[34, 255, 0]
bond (id 85), (id 94)
set_bond stick_color, color19, (id 85), (id 94)
set_color color20,[40, 255, 0]
bond (id 87), (id 96)
set_bond stick_color, color20, (id 87), (id 96)
set_color color21,[59, 255, 0]
bond (id 90), (id 98)
set_bond stick_color, color21, (id 90), (id 98)
set_color color22,[75, 255, 0]
bond (id 93), (id 99)
set_bond stick_color, color22, (id 93), (id 99)
set_color color23,[43, 255, 0]
bond (id 96), (id 102)
set_bond stick_color, color23, (id 96), (id 102)
set_color color24,[98, 255, 0]
bond (id 98), (id 103)
set_bond stick_color, color24, (id 98), (id 103)
set_color color25,[255, 4, 0]
bond (id 139), (id 140)
set_bond stick_color, color25, (id 139), (id 140)
set_color color26,[24, 255, 0]
bond (id 139), (id 141)
set_bond stick_color, color26, (id 139), (id 141)
set_color color27,[44, 255, 0]
bond (id 139), (id 142)
set_bond stick_color, color27, (id 139), (id 142)
set_color color28,[36, 255, 0]
bond (id 140), (id 143)
set_bond stick_color, color28, (id 140), (id 143)
set_color color29,[45, 255, 0]
bond (id 140), (id 144)
set_bond stick_color, color29, (id 140), (id 144)
set_color color30,[36, 255, 0]
bond (id 141), (id 145)
set_bond stick_color, color30, (id 141), (id 145)
set_color color31,[157, 255, 0]
bond (id 141), (id 146)
set_bond stick_color, color31, (id 141), (id 146)
set_color color32,[55, 255, 0]
bond (id 143), (id 147)
set_bond stick_color, color32, (id 143), (id 147)
set_color color33,[189, 255, 0]
bond (id 143), (id 148)
set_bond stick_color, color33, (id 143), (id 148)
set_color color34,[71, 255, 0]
bond (id 145), (id 147)
set_bond stick_color, color34, (id 145), (id 147)
set_color color35,[42, 255, 0]
bond (id 145), (id 149)
set_bond stick_color, color35, (id 145), (id 149)
set_color color36,[42, 255, 0]
bond (id 147), (id 150)
set_bond stick_color, color36, (id 147), (id 150)
set_color color37,[255, 52, 0]
bond (id 151), (id 152)
set_bond stick_color, color37, (id 151), (id 152)
set_color color38,[42, 255, 0]
bond (id 151), (id 153)
set_bond stick_color, color38, (id 151), (id 153)
set_color color39,[58, 255, 0]
bond (id 151), (id 154)
set_bond stick_color, color39, (id 151), (id 154)
set_color color40,[46, 255, 0]
bond (id 152), (id 155)
set_bond stick_color, color40, (id 152), (id 155)
set_color color41,[255, 167, 0]
bond (id 152), (id 156)
set_bond stick_color, color41, (id 152), (id 156)
set_color color42,[33, 255, 0]
bond (id 155), (id 157)
set_bond stick_color, color42, (id 155), (id 157)
set_color color43,[41, 255, 0]
bond (id 155), (id 158)
set_bond stick_color, color43, (id 155), (id 158)
set_color color44,[41, 255, 0]
bond (id 155), (id 159)
set_bond stick_color, color44, (id 155), (id 159)
set_color color45,[255, 140, 0]
bond (id 156), (id 160)
set_bond stick_color, color45, (id 156), (id 160)
set_color color46,[51, 255, 0]
bond (id 156), (id 161)
set_bond stick_color, color46, (id 156), (id 161)
set_color color47,[47, 255, 0]
bond (id 160), (id 162)
set_bond stick_color, color47, (id 160), (id 162)
set_color color48,[51, 255, 0]
bond (id 160), (id 163)
set_bond stick_color, color48, (id 160), (id 163)
set_color color49,[51, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color49, (id 1), (id 2)
set_color color50,[34, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color50, (id 1), (id 3)
set_color color51,[32, 255, 0]
bond (id 1), (id 6)
set_bond stick_color, color51, (id 1), (id 6)
set_color color52,[8, 255, 0]
bond (id 1), (id 7)
set_bond stick_color, color52, (id 1), (id 7)
set_color color53,[33, 255, 0]
bond (id 106), (id 118)
set_bond stick_color, color53, (id 106), (id 118)
set_color color54,[11, 255, 0]
bond (id 114), (id 118)
set_bond stick_color, color54, (id 114), (id 118)
set_color color55,[28, 255, 0]
bond (id 118), (id 121)
set_bond stick_color, color55, (id 118), (id 121)
set_color color56,[5, 255, 0]
bond (id 118), (id 125)
set_bond stick_color, color56, (id 118), (id 125)
set_color color57,[46, 255, 0]
bond (id 2), (id 4)
set_bond stick_color, color57, (id 2), (id 4)
set_color color58,[28, 255, 0]
bond (id 2), (id 5)
set_bond stick_color, color58, (id 2), (id 5)
set_color color59,[0, 255, 0]
bond (id 3), (id 8)
set_bond stick_color, color59, (id 3), (id 8)
set_color color60,[35, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color60, (id 3), (id 9)
set_color color61,[24, 255, 0]
bond (id 4), (id 10)
set_bond stick_color, color61, (id 4), (id 10)
set_color color62,[2, 255, 0]
bond (id 4), (id 11)
set_bond stick_color, color62, (id 4), (id 11)
set_color color63,[48, 255, 0]
bond (id 5), (id 12)
set_bond stick_color, color63, (id 5), (id 12)
set_color color64,[46, 255, 0]
bond (id 5), (id 13)
set_bond stick_color, color64, (id 5), (id 13)
set_color color65,[57, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color65, (id 6), (id 14)
set_color color66,[52, 255, 0]
bond (id 6), (id 15)
set_bond stick_color, color66, (id 6), (id 15)
set_color color67,[55, 255, 0]
bond (id 7), (id 16)
set_bond stick_color, color67, (id 7), (id 16)
set_color color68,[63, 255, 0]
bond (id 7), (id 17)
set_bond stick_color, color68, (id 7), (id 17)
set_color color69,[47, 255, 0]
bond (id 8), (id 18)
set_bond stick_color, color69, (id 8), (id 18)
set_color color70,[45, 255, 0]
bond (id 8), (id 19)
set_bond stick_color, color70, (id 8), (id 19)
set_color color71,[52, 255, 0]
bond (id 9), (id 20)
set_bond stick_color, color71, (id 9), (id 20)
set_color color72,[47, 255, 0]
bond (id 9), (id 21)
set_bond stick_color, color72, (id 9), (id 21)
set_color color73,[49, 255, 0]
bond (id 10), (id 22)
set_bond stick_color, color73, (id 10), (id 22)
set_color color74,[49, 255, 0]
bond (id 10), (id 23)
set_bond stick_color, color74, (id 10), (id 23)
set_color color75,[48, 255, 0]
bond (id 12), (id 22)
set_bond stick_color, color75, (id 12), (id 22)
set_color color76,[43, 255, 0]
bond (id 14), (id 25)
set_bond stick_color, color76, (id 14), (id 25)
set_color color77,[47, 255, 0]
bond (id 14), (id 26)
set_bond stick_color, color77, (id 14), (id 26)
set_color color78,[51, 255, 0]
bond (id 15), (id 27)
set_bond stick_color, color78, (id 15), (id 27)
set_color color79,[50, 255, 0]
bond (id 15), (id 28)
set_bond stick_color, color79, (id 15), (id 28)
set_color color80,[48, 255, 0]
bond (id 16), (id 29)
set_bond stick_color, color80, (id 16), (id 29)
set_color color81,[43, 255, 0]
bond (id 16), (id 30)
set_bond stick_color, color81, (id 16), (id 30)
set_color color82,[46, 255, 0]
bond (id 17), (id 31)
set_bond stick_color, color82, (id 17), (id 31)
set_color color83,[48, 255, 0]
bond (id 17), (id 32)
set_bond stick_color, color83, (id 17), (id 32)
set_color color84,[49, 255, 0]
bond (id 18), (id 33)
set_bond stick_color, color84, (id 18), (id 33)
set_color color85,[50, 255, 0]
bond (id 18), (id 34)
set_bond stick_color, color85, (id 18), (id 34)
set_color color86,[41, 255, 0]
bond (id 20), (id 33)
set_bond stick_color, color86, (id 20), (id 33)
set_color color87,[48, 255, 0]
bond (id 22), (id 36)
set_bond stick_color, color87, (id 22), (id 36)
set_color color88,[48, 255, 0]
bond (id 25), (id 38)
set_bond stick_color, color88, (id 25), (id 38)
set_color color89,[48, 255, 0]
bond (id 25), (id 39)
set_bond stick_color, color89, (id 25), (id 39)
set_color color90,[44, 255, 0]
bond (id 27), (id 38)
set_bond stick_color, color90, (id 27), (id 38)
set_color color91,[44, 255, 0]
bond (id 29), (id 41)
set_bond stick_color, color91, (id 29), (id 41)
set_color color92,[45, 255, 0]
bond (id 29), (id 42)
set_bond stick_color, color92, (id 29), (id 42)
set_color color93,[42, 255, 0]
bond (id 31), (id 41)
set_bond stick_color, color93, (id 31), (id 41)
set_color color94,[48, 255, 0]
bond (id 33), (id 44)
set_bond stick_color, color94, (id 33), (id 44)
set_color color95,[47, 255, 0]
bond (id 38), (id 47)
set_bond stick_color, color95, (id 38), (id 47)
set_color color96,[45, 255, 0]
bond (id 41), (id 49)
set_bond stick_color, color96, (id 41), (id 49)
set_color color97,[47, 255, 0]
bond (id 94), (id 100)
set_bond stick_color, color97, (id 94), (id 100)
set_color color98,[38, 255, 0]
bond (id 94), (id 101)
set_bond stick_color, color98, (id 94), (id 101)
set_color color99,[50, 255, 0]
bond (id 99), (id 104)
set_bond stick_color, color99, (id 99), (id 104)
set_color color100,[39, 255, 0]
bond (id 99), (id 105)
set_bond stick_color, color100, (id 99), (id 105)
set_color color101,[44, 255, 0]
bond (id 100), (id 106)
set_bond stick_color, color101, (id 100), (id 106)
set_color color102,[45, 255, 0]
bond (id 100), (id 107)
set_bond stick_color, color102, (id 100), (id 107)
set_color color103,[41, 255, 0]
bond (id 101), (id 108)
set_bond stick_color, color103, (id 101), (id 108)
set_color color104,[41, 255, 0]
bond (id 101), (id 109)
set_bond stick_color, color104, (id 101), (id 109)
set_color color105,[47, 255, 0]
bond (id 102), (id 110)
set_bond stick_color, color105, (id 102), (id 110)
set_color color106,[34, 255, 0]
bond (id 102), (id 111)
set_bond stick_color, color106, (id 102), (id 111)
set_color color107,[37, 255, 0]
bond (id 103), (id 112)
set_bond stick_color, color107, (id 103), (id 112)
set_color color108,[36, 255, 0]
bond (id 103), (id 113)
set_bond stick_color, color108, (id 103), (id 113)
set_color color109,[44, 255, 0]
bond (id 104), (id 114)
set_bond stick_color, color109, (id 104), (id 114)
set_color color110,[40, 255, 0]
bond (id 104), (id 115)
set_bond stick_color, color110, (id 104), (id 115)
set_color color111,[41, 255, 0]
bond (id 105), (id 116)
set_bond stick_color, color111, (id 105), (id 116)
set_color color112,[40, 255, 0]
bond (id 105), (id 117)
set_bond stick_color, color112, (id 105), (id 117)
set_color color113,[44, 255, 0]
bond (id 106), (id 119)
set_bond stick_color, color113, (id 106), (id 119)
set_color color114,[37, 255, 0]
bond (id 108), (id 119)
set_bond stick_color, color114, (id 108), (id 119)
set_color color115,[40, 255, 0]
bond (id 108), (id 120)
set_bond stick_color, color115, (id 108), (id 120)
set_color color116,[46, 255, 0]
bond (id 110), (id 121)
set_bond stick_color, color116, (id 110), (id 121)
set_color color117,[45, 255, 0]
bond (id 110), (id 122)
set_bond stick_color, color117, (id 110), (id 122)
set_color color118,[39, 255, 0]
bond (id 111), (id 123)
set_bond stick_color, color118, (id 111), (id 123)
set_color color119,[46, 255, 0]
bond (id 111), (id 124)
set_bond stick_color, color119, (id 111), (id 124)
set_color color120,[47, 255, 0]
bond (id 112), (id 125)
set_bond stick_color, color120, (id 112), (id 125)
set_color color121,[44, 255, 0]
bond (id 112), (id 126)
set_bond stick_color, color121, (id 112), (id 126)
set_color color122,[39, 255, 0]
bond (id 113), (id 127)
set_bond stick_color, color122, (id 113), (id 127)
set_color color123,[32, 255, 0]
bond (id 113), (id 128)
set_bond stick_color, color123, (id 113), (id 128)
set_color color124,[40, 255, 0]
bond (id 114), (id 129)
set_bond stick_color, color124, (id 114), (id 129)
set_color color125,[41, 255, 0]
bond (id 116), (id 129)
set_bond stick_color, color125, (id 116), (id 129)
set_color color126,[39, 255, 0]
bond (id 116), (id 130)
set_bond stick_color, color126, (id 116), (id 130)
set_color color127,[32, 255, 0]
bond (id 119), (id 131)
set_bond stick_color, color127, (id 119), (id 131)
set_color color128,[44, 255, 0]
bond (id 121), (id 132)
set_bond stick_color, color128, (id 121), (id 132)
set_color color129,[44, 255, 0]
bond (id 123), (id 132)
set_bond stick_color, color129, (id 123), (id 132)
set_color color130,[42, 255, 0]
bond (id 123), (id 133)
set_bond stick_color, color130, (id 123), (id 133)
set_color color131,[44, 255, 0]
bond (id 125), (id 134)
set_bond stick_color, color131, (id 125), (id 134)
set_color color132,[42, 255, 0]
bond (id 127), (id 134)
set_bond stick_color, color132, (id 127), (id 134)
set_color color133,[41, 255, 0]
bond (id 127), (id 135)
set_bond stick_color, color133, (id 127), (id 135)
set_color color134,[34, 255, 0]
bond (id 129), (id 136)
set_bond stick_color, color134, (id 129), (id 136)
set_color color135,[45, 255, 0]
bond (id 132), (id 137)
set_bond stick_color, color135, (id 132), (id 137)
set_color color136,[46, 255, 0]
bond (id 134), (id 138)
set_bond stick_color, color136, (id 134), (id 138)

