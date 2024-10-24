# Max Energy:       8.03346504
# Min Energy:      -0.44583339
# median Energy:    3.79381582

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[89, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[95, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color2, (id 1), (id 5)
set_color color3,[82, 255, 0]
bond (id 1), (id 7)
set_bond stick_color, color3, (id 1), (id 7)
set_color color4,[85, 255, 0]
bond (id 1), (id 10)
set_bond stick_color, color4, (id 1), (id 10)
set_color color5,[94, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color5, (id 2), (id 3)
set_color color6,[82, 255, 0]
bond (id 2), (id 8)
set_bond stick_color, color6, (id 2), (id 8)
set_color color7,[84, 255, 0]
bond (id 2), (id 11)
set_bond stick_color, color7, (id 2), (id 11)
set_color color8,[82, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color8, (id 3), (id 4)
set_color color9,[82, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color9, (id 3), (id 9)
set_color color10,[90, 255, 0]
bond (id 3), (id 12)
set_bond stick_color, color10, (id 3), (id 12)
set_color color11,[88, 255, 0]
bond (id 4), (id 13)
set_bond stick_color, color11, (id 4), (id 13)
set_color color12,[92, 255, 0]
bond (id 4), (id 14)
set_bond stick_color, color12, (id 4), (id 14)
set_color color13,[252, 255, 0]
bond (id 4), (id 19)
set_bond stick_color, color13, (id 4), (id 19)
set_color color14,[77, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color14, (id 5), (id 6)
set_color color15,[92, 255, 0]
bond (id 5), (id 15)
set_bond stick_color, color15, (id 5), (id 15)
set_color color16,[77, 255, 0]
bond (id 5), (id 16)
set_bond stick_color, color16, (id 5), (id 16)
set_color color17,[97, 255, 0]
bond (id 6), (id 17)
set_bond stick_color, color17, (id 6), (id 17)
set_color color18,[209, 255, 0]
bond (id 6), (id 18)
set_bond stick_color, color18, (id 6), (id 18)
set_color color19,[102, 255, 0]
bond (id 6), (id 37)
set_bond stick_color, color19, (id 6), (id 37)
set_color color20,[255, 176, 0]
bond (id 18), (id 19)
set_bond stick_color, color20, (id 18), (id 19)
set_color color21,[255, 51, 0]
bond (id 20), (id 21)
set_bond stick_color, color21, (id 20), (id 21)
set_color color22,[147, 255, 0]
bond (id 20), (id 23)
set_bond stick_color, color22, (id 20), (id 23)
set_color color23,[255, 62, 0]
bond (id 21), (id 22)
set_bond stick_color, color23, (id 21), (id 22)
set_color color24,[91, 255, 0]
bond (id 23), (id 24)
set_bond stick_color, color24, (id 23), (id 24)
set_color color25,[90, 255, 0]
bond (id 23), (id 25)
set_bond stick_color, color25, (id 23), (id 25)
set_color color26,[98, 255, 0]
bond (id 23), (id 26)
set_bond stick_color, color26, (id 23), (id 26)
set_color color27,[84, 255, 0]
bond (id 26), (id 27)
set_bond stick_color, color27, (id 26), (id 27)
set_color color28,[83, 255, 0]
bond (id 26), (id 28)
set_bond stick_color, color28, (id 26), (id 28)
set_color color29,[84, 255, 0]
bond (id 27), (id 29)
set_bond stick_color, color29, (id 27), (id 29)
set_color color30,[82, 255, 0]
bond (id 27), (id 30)
set_bond stick_color, color30, (id 27), (id 30)
set_color color31,[84, 255, 0]
bond (id 28), (id 31)
set_bond stick_color, color31, (id 28), (id 31)
set_color color32,[83, 255, 0]
bond (id 28), (id 32)
set_bond stick_color, color32, (id 28), (id 32)
set_color color33,[84, 255, 0]
bond (id 29), (id 33)
set_bond stick_color, color33, (id 29), (id 33)
set_color color34,[83, 255, 0]
bond (id 29), (id 34)
set_bond stick_color, color34, (id 29), (id 34)
set_color color35,[84, 255, 0]
bond (id 31), (id 33)
set_bond stick_color, color35, (id 31), (id 33)
set_color color36,[83, 255, 0]
bond (id 31), (id 35)
set_bond stick_color, color36, (id 31), (id 35)
set_color color37,[83, 255, 0]
bond (id 33), (id 36)
set_bond stick_color, color37, (id 33), (id 36)
set_color color38,[88, 255, 0]
bond (id 37), (id 38)
set_bond stick_color, color38, (id 37), (id 38)
set_color color39,[83, 255, 0]
bond (id 38), (id 39)
set_bond stick_color, color39, (id 38), (id 39)
set_color color40,[83, 255, 0]
bond (id 38), (id 40)
set_bond stick_color, color40, (id 38), (id 40)
set_color color41,[82, 255, 0]
bond (id 38), (id 41)
set_bond stick_color, color41, (id 38), (id 41)

