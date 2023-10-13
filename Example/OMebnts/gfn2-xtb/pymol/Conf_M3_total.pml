# Max Energy:       8.85523661
# Min Energy:      -0.68023094
# median Energy:    4.08750283

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

set_color color2,[112, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color2, (id 1), (id 5)

set_color color3,[112, 255, 0]
bond (id 1), (id 7)
set_bond stick_color, color3, (id 1), (id 7)

set_color color4,[113, 255, 0]
bond (id 1), (id 10)
set_bond stick_color, color4, (id 1), (id 10)

set_color color5,[109, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color5, (id 2), (id 3)

set_color color6,[113, 255, 0]
bond (id 2), (id 8)
set_bond stick_color, color6, (id 2), (id 8)

set_color color7,[112, 255, 0]
bond (id 2), (id 11)
set_bond stick_color, color7, (id 2), (id 11)

set_color color8,[97, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color8, (id 3), (id 4)

set_color color9,[113, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color9, (id 3), (id 9)

set_color color10,[117, 255, 0]
bond (id 3), (id 12)
set_bond stick_color, color10, (id 3), (id 12)

set_color color11,[113, 255, 0]
bond (id 4), (id 13)
set_bond stick_color, color11, (id 4), (id 13)

set_color color12,[119, 255, 0]
bond (id 4), (id 14)
set_bond stick_color, color12, (id 4), (id 14)

set_color color13,[255, 227, 0]
bond (id 4), (id 19)
set_bond stick_color, color13, (id 4), (id 19)

set_color color14,[95, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color14, (id 5), (id 6)

set_color color15,[116, 255, 0]
bond (id 5), (id 15)
set_bond stick_color, color15, (id 5), (id 15)

set_color color16,[109, 255, 0]
bond (id 5), (id 16)
set_bond stick_color, color16, (id 5), (id 16)

set_color color17,[119, 255, 0]
bond (id 6), (id 17)
set_bond stick_color, color17, (id 6), (id 17)

set_color color18,[237, 255, 0]
bond (id 6), (id 18)
set_bond stick_color, color18, (id 6), (id 18)

set_color color19,[146, 255, 0]
bond (id 6), (id 37)
set_bond stick_color, color19, (id 6), (id 37)

set_color color20,[255, 117, 0]
bond (id 18), (id 19)
set_bond stick_color, color20, (id 18), (id 19)

set_color color21,[255, 79, 0]
bond (id 20), (id 21)
set_bond stick_color, color21, (id 20), (id 21)

set_color color22,[0, 255, 0]
bond (id 20), (id 23)
set_bond stick_color, color22, (id 20), (id 23)

set_color color23,[255, 0, 0]
bond (id 21), (id 22)
set_bond stick_color, color23, (id 21), (id 22)

set_color color24,[117, 255, 0]
bond (id 23), (id 24)
set_bond stick_color, color24, (id 23), (id 24)

set_color color25,[120, 255, 0]
bond (id 23), (id 25)
set_bond stick_color, color25, (id 23), (id 25)

set_color color26,[140, 255, 0]
bond (id 23), (id 26)
set_bond stick_color, color26, (id 23), (id 26)

set_color color27,[117, 255, 0]
bond (id 37), (id 38)
set_bond stick_color, color27, (id 37), (id 38)

set_color color28,[112, 255, 0]
bond (id 38), (id 39)
set_bond stick_color, color28, (id 38), (id 39)

set_color color29,[110, 255, 0]
bond (id 38), (id 40)
set_bond stick_color, color29, (id 38), (id 40)

set_color color30,[109, 255, 0]
bond (id 38), (id 41)
set_bond stick_color, color30, (id 38), (id 41)

set_color colorring1,[118, 255, 0]
color colorring1, id 26+27+28+29+30+31+32+33+34+35+36


