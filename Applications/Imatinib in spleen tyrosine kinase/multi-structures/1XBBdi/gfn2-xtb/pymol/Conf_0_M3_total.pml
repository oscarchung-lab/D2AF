# Max Energy:       9.41873385
# Min Energy:      -0.67505183
# median Energy:    4.37184101

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_0.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[102, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[120, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[167, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)

set_color color4,[238, 255, 0]
bond (id 1), (id 18)
set_bond stick_color, color4, (id 1), (id 18)

set_color color5,[108, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color5, (id 4), (id 5)

set_color color6,[81, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color6, (id 4), (id 6)

set_color color7,[244, 255, 0]
bond (id 4), (id 7)
set_bond stick_color, color7, (id 4), (id 7)

set_color color8,[237, 255, 0]
bond (id 7), (id 8)
set_bond stick_color, color8, (id 7), (id 8)

set_color color9,[238, 255, 0]
bond (id 7), (id 12)
set_bond stick_color, color9, (id 7), (id 12)

set_color color10,[101, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color10, (id 8), (id 9)

set_color color11,[116, 255, 0]
bond (id 8), (id 10)
set_bond stick_color, color11, (id 8), (id 10)

set_color color12,[115, 255, 0]
bond (id 8), (id 11)
set_bond stick_color, color12, (id 8), (id 11)

set_color color13,[110, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color13, (id 12), (id 13)

set_color color14,[91, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color14, (id 12), (id 14)

set_color color15,[154, 255, 0]
bond (id 12), (id 15)
set_bond stick_color, color15, (id 12), (id 15)

set_color color16,[108, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color16, (id 15), (id 16)

set_color color17,[101, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color17, (id 15), (id 17)

set_color color18,[235, 255, 0]
bond (id 15), (id 18)
set_bond stick_color, color18, (id 15), (id 18)

set_color color19,[227, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color19, (id 18), (id 19)

set_color color20,[121, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color20, (id 19), (id 20)

set_color color21,[114, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color21, (id 19), (id 21)

set_color color22,[148, 255, 0]
bond (id 19), (id 22)
set_bond stick_color, color22, (id 19), (id 22)

set_color color23,[243, 255, 0]
bond (id 31), (id 32)
set_bond stick_color, color23, (id 31), (id 32)

set_color color24,[195, 255, 0]
bond (id 32), (id 33)
set_bond stick_color, color24, (id 32), (id 33)

set_color color25,[255, 178, 0]
bond (id 32), (id 34)
set_bond stick_color, color25, (id 32), (id 34)

set_color color26,[124, 255, 0]
bond (id 34), (id 35)
set_bond stick_color, color26, (id 34), (id 35)

set_color color27,[38, 255, 0]
bond (id 34), (id 36)
set_bond stick_color, color27, (id 34), (id 36)

set_color color28,[119, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color28, (id 43), (id 44)

set_color color29,[110, 255, 0]
bond (id 44), (id 45)
set_bond stick_color, color29, (id 44), (id 45)

set_color color30,[112, 255, 0]
bond (id 44), (id 46)
set_bond stick_color, color30, (id 44), (id 46)

set_color color31,[110, 255, 0]
bond (id 44), (id 47)
set_bond stick_color, color31, (id 44), (id 47)

set_color color32,[75, 255, 0]
bond (id 48), (id 49)
set_bond stick_color, color32, (id 48), (id 49)

set_color color33,[114, 255, 0]
bond (id 49), (id 50)
set_bond stick_color, color33, (id 49), (id 50)

set_color color34,[60, 255, 0]
bond (id 49), (id 51)
set_bond stick_color, color34, (id 49), (id 51)

set_color color35,[241, 255, 0]
bond (id 58), (id 59)
set_bond stick_color, color35, (id 58), (id 59)

set_color colorring1,[145, 255, 0]
color colorring1, id 22+23+24+25+26+27+28+29+30+31

set_color colorring2,[197, 255, 0]
color colorring2, id 36+37+38+39+40+41+42+43+48

set_color colorring3,[255, 0, 0]
color colorring3, id 51+52+53+54+55+56+57+58

set_color colorring4,[255, 186, 0]
color colorring4, id 59+60+61+62+63+64+65+66+67+68


