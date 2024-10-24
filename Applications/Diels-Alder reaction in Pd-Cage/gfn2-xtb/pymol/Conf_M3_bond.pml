# Max Energy:       4.12041018
# Min Energy:      -0.34623845
# median Energy:    1.88708586

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
hide sticks, hydrogens

# Adding a representation with the appropriate colorID for each bond

set_color color1,[74, 255, 0]
bond (id 12), (id 24)
set_bond stick_color, color1, (id 12), (id 24)
set_color color2,[94, 255, 0]
bond (id 20), (id 35)
set_bond stick_color, color2, (id 20), (id 35)
set_color color3,[89, 255, 0]
bond (id 24), (id 37)
set_bond stick_color, color3, (id 24), (id 37)
set_color color4,[94, 255, 0]
bond (id 27), (id 40)
set_bond stick_color, color4, (id 27), (id 40)
set_color color5,[159, 255, 0]
bond (id 31), (id 43)
set_bond stick_color, color5, (id 31), (id 43)
set_color color6,[88, 255, 0]
bond (id 35), (id 45)
set_bond stick_color, color6, (id 35), (id 45)
set_color color7,[88, 255, 0]
bond (id 37), (id 46)
set_bond stick_color, color7, (id 37), (id 46)
set_color color8,[88, 255, 0]
bond (id 40), (id 48)
set_bond stick_color, color8, (id 40), (id 48)
set_color color9,[101, 255, 0]
bond (id 43), (id 50)
set_bond stick_color, color9, (id 43), (id 50)
set_color color10,[92, 255, 0]
bond (id 45), (id 51)
set_bond stick_color, color10, (id 45), (id 51)
set_color color11,[97, 255, 0]
bond (id 48), (id 54)
set_bond stick_color, color11, (id 48), (id 54)
set_color color12,[128, 255, 0]
bond (id 50), (id 55)
set_bond stick_color, color12, (id 50), (id 55)
set_color color13,[89, 255, 0]
bond (id 58), (id 71)
set_bond stick_color, color13, (id 58), (id 71)
set_color color14,[113, 255, 0]
bond (id 66), (id 82)
set_bond stick_color, color14, (id 66), (id 82)
set_color color15,[86, 255, 0]
bond (id 71), (id 85)
set_bond stick_color, color15, (id 71), (id 85)
set_color color16,[99, 255, 0]
bond (id 73), (id 87)
set_bond stick_color, color16, (id 73), (id 87)
set_color color17,[141, 255, 0]
bond (id 77), (id 90)
set_bond stick_color, color17, (id 77), (id 90)
set_color color18,[100, 255, 0]
bond (id 82), (id 93)
set_bond stick_color, color18, (id 82), (id 93)
set_color color19,[80, 255, 0]
bond (id 85), (id 94)
set_bond stick_color, color19, (id 85), (id 94)
set_color color20,[86, 255, 0]
bond (id 87), (id 96)
set_bond stick_color, color20, (id 87), (id 96)
set_color color21,[101, 255, 0]
bond (id 90), (id 98)
set_bond stick_color, color21, (id 90), (id 98)
set_color color22,[119, 255, 0]
bond (id 93), (id 99)
set_bond stick_color, color22, (id 93), (id 99)
set_color color23,[89, 255, 0]
bond (id 96), (id 102)
set_bond stick_color, color23, (id 96), (id 102)
set_color color24,[141, 255, 0]
bond (id 98), (id 103)
set_bond stick_color, color24, (id 98), (id 103)
set_color color25,[255, 5, 0]
bond (id 139), (id 140)
set_bond stick_color, color25, (id 139), (id 140)
set_color color26,[41, 255, 0]
bond (id 139), (id 141)
set_bond stick_color, color26, (id 139), (id 141)
set_color color27,[89, 255, 0]
bond (id 139), (id 142)
set_bond stick_color, color27, (id 139), (id 142)
set_color color28,[0, 255, 0]
bond (id 140), (id 143)
set_bond stick_color, color28, (id 140), (id 143)
set_color color29,[89, 255, 0]
bond (id 140), (id 144)
set_bond stick_color, color29, (id 140), (id 144)
set_color color30,[74, 255, 0]
bond (id 141), (id 145)
set_bond stick_color, color30, (id 141), (id 145)
set_color color31,[176, 255, 0]
bond (id 141), (id 146)
set_bond stick_color, color31, (id 141), (id 146)
set_color color32,[107, 255, 0]
bond (id 143), (id 147)
set_bond stick_color, color32, (id 143), (id 147)
set_color color33,[201, 255, 0]
bond (id 143), (id 148)
set_bond stick_color, color33, (id 143), (id 148)
set_color color34,[116, 255, 0]
bond (id 145), (id 147)
set_bond stick_color, color34, (id 145), (id 147)
set_color color35,[88, 255, 0]
bond (id 145), (id 149)
set_bond stick_color, color35, (id 145), (id 149)
set_color color36,[88, 255, 0]
bond (id 147), (id 150)
set_bond stick_color, color36, (id 147), (id 150)
set_color color37,[255, 47, 0]
bond (id 151), (id 152)
set_bond stick_color, color37, (id 151), (id 152)
set_color color38,[88, 255, 0]
bond (id 151), (id 153)
set_bond stick_color, color38, (id 151), (id 153)
set_color color39,[98, 255, 0]
bond (id 151), (id 154)
set_bond stick_color, color39, (id 151), (id 154)
set_color color40,[88, 255, 0]
bond (id 152), (id 155)
set_bond stick_color, color40, (id 152), (id 155)
set_color color41,[255, 243, 0]
bond (id 152), (id 156)
set_bond stick_color, color41, (id 152), (id 156)
set_color color42,[78, 255, 0]
bond (id 155), (id 157)
set_bond stick_color, color42, (id 155), (id 157)
set_color color43,[86, 255, 0]
bond (id 155), (id 158)
set_bond stick_color, color43, (id 155), (id 158)
set_color color44,[85, 255, 0]
bond (id 155), (id 159)
set_bond stick_color, color44, (id 155), (id 159)
set_color color45,[255, 121, 0]
bond (id 156), (id 160)
set_bond stick_color, color45, (id 156), (id 160)
set_color color46,[94, 255, 0]
bond (id 156), (id 161)
set_bond stick_color, color46, (id 156), (id 161)
set_color color47,[91, 255, 0]
bond (id 160), (id 162)
set_bond stick_color, color47, (id 160), (id 162)
set_color color48,[93, 255, 0]
bond (id 160), (id 163)
set_bond stick_color, color48, (id 160), (id 163)
set_color color49,[100, 255, 0]
bond (id 2), (id 5)
set_bond stick_color, color49, (id 2), (id 5)
set_color color50,[88, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color50, (id 3), (id 9)
set_color color51,[95, 255, 0]
bond (id 6), (id 15)
set_bond stick_color, color51, (id 6), (id 15)
set_color color52,[141, 255, 0]
bond (id 7), (id 17)
set_bond stick_color, color52, (id 7), (id 17)
set_color color53,[106, 255, 0]
bond (id 106), (id 119)
set_bond stick_color, color53, (id 106), (id 119)
set_color color54,[96, 255, 0]
bond (id 114), (id 129)
set_bond stick_color, color54, (id 114), (id 129)
set_color color55,[108, 255, 0]
bond (id 121), (id 132)
set_bond stick_color, color55, (id 121), (id 132)
set_color color56,[91, 255, 0]
bond (id 125), (id 134)
set_bond stick_color, color56, (id 125), (id 134)
set_color color57,[88, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color57, (id 1), (id 2)
set_color color58,[89, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color58, (id 1), (id 3)
set_color color59,[89, 255, 0]
bond (id 1), (id 6)
set_bond stick_color, color59, (id 1), (id 6)
set_color color60,[89, 255, 0]
bond (id 1), (id 7)
set_bond stick_color, color60, (id 1), (id 7)
set_color color61,[87, 255, 0]
bond (id 106), (id 118)
set_bond stick_color, color61, (id 106), (id 118)
set_color color62,[89, 255, 0]
bond (id 114), (id 118)
set_bond stick_color, color62, (id 114), (id 118)
set_color color63,[86, 255, 0]
bond (id 118), (id 121)
set_bond stick_color, color63, (id 118), (id 121)
set_color color64,[89, 255, 0]
bond (id 118), (id 125)
set_bond stick_color, color64, (id 118), (id 125)

