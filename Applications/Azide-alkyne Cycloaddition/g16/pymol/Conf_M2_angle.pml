# Max Energy:      14.52579852
# Min Energy:      -0.54107320
# median Energy:    6.99236266

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[84, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[88, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color2, (id 1), (id 5)
set_color color3,[78, 255, 0]
bond (id 1), (id 7)
set_bond stick_color, color3, (id 1), (id 7)
set_color color4,[81, 255, 0]
bond (id 1), (id 10)
set_bond stick_color, color4, (id 1), (id 10)
set_color color5,[87, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color5, (id 2), (id 3)
set_color color6,[78, 255, 0]
bond (id 2), (id 8)
set_bond stick_color, color6, (id 2), (id 8)
set_color color7,[80, 255, 0]
bond (id 2), (id 11)
set_bond stick_color, color7, (id 2), (id 11)
set_color color8,[57, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color8, (id 3), (id 4)
set_color color9,[78, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color9, (id 3), (id 9)
set_color color10,[86, 255, 0]
bond (id 3), (id 12)
set_bond stick_color, color10, (id 3), (id 12)
set_color color11,[84, 255, 0]
bond (id 4), (id 13)
set_bond stick_color, color11, (id 4), (id 13)
set_color color12,[87, 255, 0]
bond (id 4), (id 14)
set_bond stick_color, color12, (id 4), (id 14)
set_color color13,[213, 255, 0]
bond (id 4), (id 19)
set_bond stick_color, color13, (id 4), (id 19)
set_color color14,[60, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color14, (id 5), (id 6)
set_color color15,[87, 255, 0]
bond (id 5), (id 15)
set_bond stick_color, color15, (id 5), (id 15)
set_color color16,[73, 255, 0]
bond (id 5), (id 16)
set_bond stick_color, color16, (id 5), (id 16)
set_color color17,[90, 255, 0]
bond (id 6), (id 17)
set_bond stick_color, color17, (id 6), (id 17)
set_color color18,[181, 255, 0]
bond (id 6), (id 18)
set_bond stick_color, color18, (id 6), (id 18)
set_color color19,[92, 255, 0]
bond (id 6), (id 37)
set_bond stick_color, color19, (id 6), (id 37)
set_color color20,[255, 219, 0]
bond (id 18), (id 19)
set_bond stick_color, color20, (id 18), (id 19)
set_color color21,[255, 102, 0]
bond (id 20), (id 21)
set_bond stick_color, color21, (id 20), (id 21)
set_color color22,[123, 255, 0]
bond (id 20), (id 23)
set_bond stick_color, color22, (id 20), (id 23)
set_color color23,[255, 109, 0]
bond (id 21), (id 22)
set_bond stick_color, color23, (id 21), (id 22)
set_color color24,[85, 255, 0]
bond (id 23), (id 24)
set_bond stick_color, color24, (id 23), (id 24)
set_color color25,[88, 255, 0]
bond (id 23), (id 25)
set_bond stick_color, color25, (id 23), (id 25)
set_color color26,[83, 255, 0]
bond (id 23), (id 26)
set_bond stick_color, color26, (id 23), (id 26)
set_color color27,[88, 255, 0]
bond (id 26), (id 27)
set_bond stick_color, color27, (id 26), (id 27)
set_color color28,[76, 255, 0]
bond (id 26), (id 28)
set_bond stick_color, color28, (id 26), (id 28)
set_color color29,[79, 255, 0]
bond (id 27), (id 29)
set_bond stick_color, color29, (id 27), (id 29)
set_color color30,[80, 255, 0]
bond (id 27), (id 30)
set_bond stick_color, color30, (id 27), (id 30)
set_color color31,[79, 255, 0]
bond (id 28), (id 31)
set_bond stick_color, color31, (id 28), (id 31)
set_color color32,[80, 255, 0]
bond (id 28), (id 32)
set_bond stick_color, color32, (id 28), (id 32)
set_color color33,[76, 255, 0]
bond (id 29), (id 33)
set_bond stick_color, color33, (id 29), (id 33)
set_color color34,[81, 255, 0]
bond (id 29), (id 34)
set_bond stick_color, color34, (id 29), (id 34)
set_color color35,[83, 255, 0]
bond (id 31), (id 33)
set_bond stick_color, color35, (id 31), (id 33)
set_color color36,[79, 255, 0]
bond (id 31), (id 35)
set_bond stick_color, color36, (id 31), (id 35)
set_color color37,[78, 255, 0]
bond (id 33), (id 36)
set_bond stick_color, color37, (id 33), (id 36)
set_color color38,[80, 255, 0]
bond (id 37), (id 38)
set_bond stick_color, color38, (id 37), (id 38)
set_color color39,[79, 255, 0]
bond (id 38), (id 39)
set_bond stick_color, color39, (id 38), (id 39)
set_color color40,[79, 255, 0]
bond (id 38), (id 40)
set_bond stick_color, color40, (id 38), (id 40)
set_color color41,[78, 255, 0]
bond (id 38), (id 41)
set_bond stick_color, color41, (id 38), (id 41)

