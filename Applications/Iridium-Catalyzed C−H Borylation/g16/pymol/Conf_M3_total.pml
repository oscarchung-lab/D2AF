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
bond id 49,id 52
unbond id 1,id 52
unbond id 1, id 52

# Adding a representation with the appropriate colorID for each bond

set_color color1,[76, 255, 0]
bond (id 2), (id 4)
set_bond stick_color, color1, (id 2), (id 4)

set_color color2,[55, 255, 0]
bond (id 2), (id 5)
set_bond stick_color, color2, (id 2), (id 5)

set_color color3,[26, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color3, (id 3), (id 9)

set_color color4,[60, 255, 0]
bond (id 3), (id 10)
set_bond stick_color, color4, (id 3), (id 10)

set_color color5,[72, 255, 0]
bond (id 4), (id 11)
set_bond stick_color, color5, (id 4), (id 11)

set_color color6,[41, 255, 0]
bond (id 5), (id 12)
set_bond stick_color, color6, (id 5), (id 12)

set_color color7,[58, 255, 0]
bond (id 6), (id 13)
set_bond stick_color, color7, (id 6), (id 13)

set_color color8,[30, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color8, (id 6), (id 14)

set_color color9,[102, 255, 0]
bond (id 9), (id 19)
set_bond stick_color, color9, (id 9), (id 19)

set_color color10,[114, 255, 0]
bond (id 10), (id 20)
set_bond stick_color, color10, (id 10), (id 20)

set_color color11,[78, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color11, (id 11), (id 12)

set_color color12,[55, 255, 0]
bond (id 11), (id 21)
set_bond stick_color, color12, (id 11), (id 21)

set_color color13,[64, 255, 0]
bond (id 11), (id 22)
set_bond stick_color, color13, (id 11), (id 22)

set_color color14,[61, 255, 0]
bond (id 12), (id 23)
set_bond stick_color, color14, (id 12), (id 23)

set_color color15,[60, 255, 0]
bond (id 12), (id 24)
set_bond stick_color, color15, (id 12), (id 24)

set_color color16,[35, 255, 0]
bond (id 13), (id 25)
set_bond stick_color, color16, (id 13), (id 25)

set_color color17,[26, 255, 0]
bond (id 14), (id 26)
set_bond stick_color, color17, (id 14), (id 26)

set_color color18,[52, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color18, (id 15), (id 17)

set_color color19,[77, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color19, (id 19), (id 20)

set_color color20,[60, 255, 0]
bond (id 19), (id 33)
set_bond stick_color, color20, (id 19), (id 33)

set_color color21,[61, 255, 0]
bond (id 19), (id 34)
set_bond stick_color, color21, (id 19), (id 34)

set_color color22,[55, 255, 0]
bond (id 20), (id 35)
set_bond stick_color, color22, (id 20), (id 35)

set_color color23,[65, 255, 0]
bond (id 20), (id 36)
set_bond stick_color, color23, (id 20), (id 36)

set_color color24,[66, 255, 0]
bond (id 25), (id 26)
set_bond stick_color, color24, (id 25), (id 26)

set_color color25,[58, 255, 0]
bond (id 25), (id 37)
set_bond stick_color, color25, (id 25), (id 37)

set_color color26,[65, 255, 0]
bond (id 25), (id 38)
set_bond stick_color, color26, (id 25), (id 38)

set_color color27,[61, 255, 0]
bond (id 26), (id 39)
set_bond stick_color, color27, (id 26), (id 39)

set_color color28,[61, 255, 0]
bond (id 26), (id 40)
set_bond stick_color, color28, (id 26), (id 40)

set_color color29,[120, 255, 0]
bond (id 49), (id 50)
set_bond stick_color, color29, (id 49), (id 50)

set_color color30,[201, 255, 0]
bond (id 49), (id 51)
set_bond stick_color, color30, (id 49), (id 51)

set_color color31,[255, 0, 0]
bond (id 49), (id 52)
set_bond stick_color, color31, (id 49), (id 52)

set_color color32,[100, 255, 0]
bond (id 50), (id 53)
set_bond stick_color, color32, (id 50), (id 53)

set_color color33,[62, 255, 0]
bond (id 50), (id 54)
set_bond stick_color, color33, (id 50), (id 54)

set_color color34,[67, 255, 0]
bond (id 51), (id 55)
set_bond stick_color, color34, (id 51), (id 55)

set_color color35,[87, 255, 0]
bond (id 51), (id 56)
set_bond stick_color, color35, (id 51), (id 56)

set_color color36,[56, 255, 0]
bond (id 1), (id 7)
set_bond stick_color, color36, (id 1), (id 7)

set_color color37,[60, 255, 0]
bond (id 1), (id 8)
set_bond stick_color, color37, (id 1), (id 8)

set_color color38,[91, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color38, (id 1), (id 2)

set_color color39,[26, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color39, (id 1), (id 3)

set_color color40,[222, 255, 0]
bond (id 1), (id 6)
set_bond stick_color, color40, (id 1), (id 6)

set_color colorring1,[97, 255, 0]
color colorring1, id 53+55+57+58+59+60+61+62+63+64

set_color colorring2,[71, 255, 0]
color colorring2, id 7+15+16+27+28+29+41+42+43+47

set_color colorring3,[52, 255, 0]
color colorring3, id 8+17+18+30+31+32+44+45+46+48


