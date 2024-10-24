# Max Energy:      42.87372090
# Min Energy:      -0.58503228
# median Energy:   21.14434431

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 1, id 52

# Adding a representation with the appropriate colorID for each bond

set_color color1,[77, 255, 0]
bond (id 2), (id 4)
set_bond stick_color, color1, (id 2), (id 4)
set_color color2,[54, 255, 0]
bond (id 2), (id 5)
set_bond stick_color, color2, (id 2), (id 5)
set_color color3,[53, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color3, (id 3), (id 9)
set_color color4,[70, 255, 0]
bond (id 3), (id 10)
set_bond stick_color, color4, (id 3), (id 10)
set_color color5,[71, 255, 0]
bond (id 4), (id 11)
set_bond stick_color, color5, (id 4), (id 11)
set_color color6,[38, 255, 0]
bond (id 5), (id 12)
set_bond stick_color, color6, (id 5), (id 12)
set_color color7,[54, 255, 0]
bond (id 6), (id 13)
set_bond stick_color, color7, (id 6), (id 13)
set_color color8,[46, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color8, (id 6), (id 14)
set_color color9,[100, 255, 0]
bond (id 9), (id 19)
set_bond stick_color, color9, (id 9), (id 19)
set_color color10,[113, 255, 0]
bond (id 10), (id 20)
set_bond stick_color, color10, (id 10), (id 20)
set_color color11,[78, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color11, (id 11), (id 12)
set_color color12,[57, 255, 0]
bond (id 11), (id 21)
set_bond stick_color, color12, (id 11), (id 21)
set_color color13,[64, 255, 0]
bond (id 11), (id 22)
set_bond stick_color, color13, (id 11), (id 22)
set_color color14,[62, 255, 0]
bond (id 12), (id 23)
set_bond stick_color, color14, (id 12), (id 23)
set_color color15,[60, 255, 0]
bond (id 12), (id 24)
set_bond stick_color, color15, (id 12), (id 24)
set_color color16,[32, 255, 0]
bond (id 13), (id 25)
set_bond stick_color, color16, (id 13), (id 25)
set_color color17,[25, 255, 0]
bond (id 14), (id 26)
set_bond stick_color, color17, (id 14), (id 26)
set_color color18,[78, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color18, (id 19), (id 20)
set_color color19,[61, 255, 0]
bond (id 19), (id 33)
set_bond stick_color, color19, (id 19), (id 33)
set_color color20,[61, 255, 0]
bond (id 19), (id 34)
set_bond stick_color, color20, (id 19), (id 34)
set_color color21,[56, 255, 0]
bond (id 20), (id 35)
set_bond stick_color, color21, (id 20), (id 35)
set_color color22,[65, 255, 0]
bond (id 20), (id 36)
set_bond stick_color, color22, (id 20), (id 36)
set_color color23,[66, 255, 0]
bond (id 25), (id 26)
set_bond stick_color, color23, (id 25), (id 26)
set_color color24,[59, 255, 0]
bond (id 25), (id 37)
set_bond stick_color, color24, (id 25), (id 37)
set_color color25,[65, 255, 0]
bond (id 25), (id 38)
set_bond stick_color, color25, (id 25), (id 38)
set_color color26,[62, 255, 0]
bond (id 26), (id 39)
set_bond stick_color, color26, (id 26), (id 39)
set_color color27,[62, 255, 0]
bond (id 26), (id 40)
set_bond stick_color, color27, (id 26), (id 40)
set_color color28,[59, 255, 0]
bond (id 49), (id 50)
set_bond stick_color, color28, (id 49), (id 50)
set_color color29,[190, 255, 0]
bond (id 49), (id 52)
set_bond stick_color, color29, (id 49), (id 52)
set_color color30,[200, 255, 0]
bond (id 49), (id 51)
set_bond stick_color, color30, (id 49), (id 51)
set_color color31,[62, 255, 0]
bond (id 50), (id 54)
set_bond stick_color, color31, (id 50), (id 54)
set_color color32,[62, 255, 0]
bond (id 50), (id 53)
set_bond stick_color, color32, (id 50), (id 53)
set_color color33,[80, 255, 0]
bond (id 51), (id 56)
set_bond stick_color, color33, (id 51), (id 56)
set_color color34,[59, 255, 0]
bond (id 51), (id 55)
set_bond stick_color, color34, (id 51), (id 55)
set_color color35,[73, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color35, (id 1), (id 2)
set_color color36,[0, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color36, (id 1), (id 3)
set_color color37,[41, 255, 0]
bond (id 1), (id 6)
set_bond stick_color, color37, (id 1), (id 6)

