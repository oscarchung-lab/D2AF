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

set_color color1,[92, 255, 0]
bond (id 12), (id 24)
set_bond stick_color, color1, (id 12), (id 24)
set_color color2,[91, 255, 0]
bond (id 24), (id 37)
set_bond stick_color, color2, (id 24), (id 37)
set_color color3,[104, 255, 0]
bond (id 20), (id 35)
set_bond stick_color, color3, (id 20), (id 35)
set_color color4,[106, 255, 0]
bond (id 35), (id 45)
set_bond stick_color, color4, (id 35), (id 45)
set_color color5,[88, 255, 0]
bond (id 37), (id 46)
set_bond stick_color, color5, (id 37), (id 46)
set_color color6,[91, 255, 0]
bond (id 27), (id 40)
set_bond stick_color, color6, (id 27), (id 40)
set_color color7,[92, 255, 0]
bond (id 40), (id 48)
set_bond stick_color, color7, (id 40), (id 48)
set_color color8,[94, 255, 0]
bond (id 31), (id 43)
set_bond stick_color, color8, (id 31), (id 43)
set_color color9,[92, 255, 0]
bond (id 43), (id 50)
set_bond stick_color, color9, (id 43), (id 50)
set_color color10,[91, 255, 0]
bond (id 45), (id 51)
set_bond stick_color, color10, (id 45), (id 51)
set_color color11,[90, 255, 0]
bond (id 48), (id 54)
set_bond stick_color, color11, (id 48), (id 54)
set_color color12,[87, 255, 0]
bond (id 50), (id 55)
set_bond stick_color, color12, (id 50), (id 55)
set_color color13,[91, 255, 0]
bond (id 58), (id 71)
set_bond stick_color, color13, (id 58), (id 71)
set_color color14,[100, 255, 0]
bond (id 71), (id 85)
set_bond stick_color, color14, (id 71), (id 85)
set_color color15,[87, 255, 0]
bond (id 66), (id 82)
set_bond stick_color, color15, (id 66), (id 82)
set_color color16,[84, 255, 0]
bond (id 82), (id 93)
set_bond stick_color, color16, (id 82), (id 93)
set_color color17,[98, 255, 0]
bond (id 85), (id 94)
set_bond stick_color, color17, (id 85), (id 94)
set_color color18,[95, 255, 0]
bond (id 73), (id 87)
set_bond stick_color, color18, (id 73), (id 87)
set_color color19,[106, 255, 0]
bond (id 87), (id 96)
set_bond stick_color, color19, (id 87), (id 96)
set_color color20,[84, 255, 0]
bond (id 77), (id 90)
set_bond stick_color, color20, (id 77), (id 90)
set_color color21,[88, 255, 0]
bond (id 90), (id 98)
set_bond stick_color, color21, (id 90), (id 98)
set_color color22,[85, 255, 0]
bond (id 93), (id 99)
set_bond stick_color, color22, (id 93), (id 99)
set_color color23,[100, 255, 0]
bond (id 96), (id 102)
set_bond stick_color, color23, (id 96), (id 102)
set_color color24,[93, 255, 0]
bond (id 98), (id 103)
set_bond stick_color, color24, (id 98), (id 103)
set_color color25,[112, 255, 0]
bond (id 139), (id 140)
set_bond stick_color, color25, (id 139), (id 140)
set_color color26,[142, 255, 0]
bond (id 139), (id 141)
set_bond stick_color, color26, (id 139), (id 141)
set_color color27,[88, 255, 0]
bond (id 139), (id 142)
set_bond stick_color, color27, (id 139), (id 142)
set_color color28,[151, 255, 0]
bond (id 140), (id 143)
set_bond stick_color, color28, (id 140), (id 143)
set_color color29,[92, 255, 0]
bond (id 140), (id 144)
set_bond stick_color, color29, (id 140), (id 144)
set_color color30,[142, 255, 0]
bond (id 141), (id 145)
set_bond stick_color, color30, (id 141), (id 145)
set_color color31,[95, 255, 0]
bond (id 141), (id 146)
set_bond stick_color, color31, (id 141), (id 146)
set_color color32,[153, 255, 0]
bond (id 143), (id 147)
set_bond stick_color, color32, (id 143), (id 147)
set_color color33,[102, 255, 0]
bond (id 143), (id 148)
set_bond stick_color, color33, (id 143), (id 148)
set_color color34,[86, 255, 0]
bond (id 145), (id 147)
set_bond stick_color, color34, (id 145), (id 147)
set_color color35,[88, 255, 0]
bond (id 145), (id 149)
set_bond stick_color, color35, (id 145), (id 149)
set_color color36,[89, 255, 0]
bond (id 147), (id 150)
set_bond stick_color, color36, (id 147), (id 150)
set_color color37,[143, 255, 0]
bond (id 151), (id 152)
set_bond stick_color, color37, (id 151), (id 152)
set_color color38,[82, 255, 0]
bond (id 151), (id 153)
set_bond stick_color, color38, (id 151), (id 153)
set_color color39,[77, 255, 0]
bond (id 151), (id 154)
set_bond stick_color, color39, (id 151), (id 154)
set_color color40,[236, 255, 0]
bond (id 152), (id 155)
set_bond stick_color, color40, (id 152), (id 155)
set_color color41,[247, 255, 0]
bond (id 152), (id 156)
set_bond stick_color, color41, (id 152), (id 156)
set_color color42,[88, 255, 0]
bond (id 155), (id 157)
set_bond stick_color, color42, (id 155), (id 157)
set_color color43,[97, 255, 0]
bond (id 155), (id 158)
set_bond stick_color, color43, (id 155), (id 158)
set_color color44,[95, 255, 0]
bond (id 155), (id 159)
set_bond stick_color, color44, (id 155), (id 159)
set_color color45,[69, 255, 0]
bond (id 156), (id 160)
set_bond stick_color, color45, (id 156), (id 160)
set_color color46,[142, 255, 0]
bond (id 156), (id 161)
set_bond stick_color, color46, (id 156), (id 161)
set_color color47,[85, 255, 0]
bond (id 160), (id 162)
set_bond stick_color, color47, (id 160), (id 162)
set_color color48,[69, 255, 0]
bond (id 160), (id 163)
set_bond stick_color, color48, (id 160), (id 163)

