# Max Energy:       9.35087845
# Min Energy:      -0.43931002
# median Energy:    4.45578422

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_0.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[71, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[93, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[133, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)

set_color color4,[242, 255, 0]
bond (id 1), (id 18)
set_bond stick_color, color4, (id 1), (id 18)

set_color color5,[74, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color5, (id 4), (id 5)

set_color color6,[43, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color6, (id 4), (id 6)

set_color color7,[247, 255, 0]
bond (id 4), (id 7)
set_bond stick_color, color7, (id 4), (id 7)

set_color color8,[239, 255, 0]
bond (id 7), (id 8)
set_bond stick_color, color8, (id 7), (id 8)

set_color color9,[247, 255, 0]
bond (id 7), (id 12)
set_bond stick_color, color9, (id 7), (id 12)

set_color color10,[67, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color10, (id 8), (id 9)

set_color color11,[84, 255, 0]
bond (id 8), (id 10)
set_bond stick_color, color11, (id 8), (id 10)

set_color color12,[83, 255, 0]
bond (id 8), (id 11)
set_bond stick_color, color12, (id 8), (id 11)

set_color color13,[81, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color13, (id 12), (id 13)

set_color color14,[59, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color14, (id 12), (id 14)

set_color color15,[127, 255, 0]
bond (id 12), (id 15)
set_bond stick_color, color15, (id 12), (id 15)

set_color color16,[74, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color16, (id 15), (id 16)

set_color color17,[70, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color17, (id 15), (id 17)

set_color color18,[233, 255, 0]
bond (id 15), (id 18)
set_bond stick_color, color18, (id 15), (id 18)

set_color color19,[226, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color19, (id 18), (id 19)

set_color color20,[100, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color20, (id 19), (id 20)

set_color color21,[81, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color21, (id 19), (id 21)

set_color color22,[118, 255, 0]
bond (id 19), (id 22)
set_bond stick_color, color22, (id 19), (id 22)

set_color color23,[244, 255, 0]
bond (id 31), (id 32)
set_bond stick_color, color23, (id 31), (id 32)

set_color color24,[196, 255, 0]
bond (id 32), (id 33)
set_bond stick_color, color24, (id 32), (id 33)

set_color color25,[255, 143, 0]
bond (id 32), (id 34)
set_bond stick_color, color25, (id 32), (id 34)

set_color color26,[98, 255, 0]
bond (id 34), (id 35)
set_bond stick_color, color26, (id 34), (id 35)

set_color color27,[96, 255, 0]
bond (id 34), (id 36)
set_bond stick_color, color27, (id 34), (id 36)

set_color color28,[82, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color28, (id 43), (id 44)

set_color color29,[79, 255, 0]
bond (id 44), (id 45)
set_bond stick_color, color29, (id 44), (id 45)

set_color color30,[81, 255, 0]
bond (id 44), (id 46)
set_bond stick_color, color30, (id 44), (id 46)

set_color color31,[79, 255, 0]
bond (id 44), (id 47)
set_bond stick_color, color31, (id 44), (id 47)

set_color color32,[86, 255, 0]
bond (id 48), (id 49)
set_bond stick_color, color32, (id 48), (id 49)

set_color color33,[68, 255, 0]
bond (id 49), (id 50)
set_bond stick_color, color33, (id 49), (id 50)

set_color color34,[12, 255, 0]
bond (id 49), (id 51)
set_bond stick_color, color34, (id 49), (id 51)

set_color color35,[255, 228, 0]
bond (id 58), (id 59)
set_bond stick_color, color35, (id 58), (id 59)

set_color colorring1,[77, 255, 0]
color colorring1, id 22+23+24+25+26+27+28+29+30+31

set_color colorring2,[165, 255, 0]
color colorring2, id 36+37+38+39+40+41+42+43+48

set_color colorring3,[255, 0, 0]
color colorring3, id 51+52+53+54+55+56+57+58

set_color colorring4,[255, 195, 0]
color colorring4, id 59+60+61+62+63+64+65+66+67+68


