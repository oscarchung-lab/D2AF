# Max Energy:      11.22614888
# Min Energy:      -0.26382004
# median Energy:    5.48116442

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[34, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[51, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color2, (id 1), (id 5)

set_color color3,[46, 255, 0]
bond (id 1), (id 7)
set_bond stick_color, color3, (id 1), (id 7)

set_color color4,[49, 255, 0]
bond (id 1), (id 10)
set_bond stick_color, color4, (id 1), (id 10)

set_color color5,[49, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color5, (id 2), (id 3)

set_color color6,[48, 255, 0]
bond (id 2), (id 8)
set_bond stick_color, color6, (id 2), (id 8)

set_color color7,[48, 255, 0]
bond (id 2), (id 11)
set_bond stick_color, color7, (id 2), (id 11)

set_color color8,[0, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color8, (id 3), (id 4)

set_color color9,[46, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color9, (id 3), (id 9)

set_color color10,[57, 255, 0]
bond (id 3), (id 12)
set_bond stick_color, color10, (id 3), (id 12)

set_color color11,[51, 255, 0]
bond (id 4), (id 13)
set_bond stick_color, color11, (id 4), (id 13)

set_color color12,[58, 255, 0]
bond (id 4), (id 14)
set_bond stick_color, color12, (id 4), (id 14)

set_color color13,[211, 255, 0]
bond (id 4), (id 19)
set_bond stick_color, color13, (id 4), (id 19)

set_color color14,[6, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color14, (id 5), (id 6)

set_color color15,[57, 255, 0]
bond (id 5), (id 15)
set_bond stick_color, color15, (id 5), (id 15)

set_color color16,[39, 255, 0]
bond (id 5), (id 16)
set_bond stick_color, color16, (id 5), (id 16)

set_color color17,[59, 255, 0]
bond (id 6), (id 17)
set_bond stick_color, color17, (id 6), (id 17)

set_color color18,[172, 255, 0]
bond (id 6), (id 18)
set_bond stick_color, color18, (id 6), (id 18)

set_color color19,[98, 255, 0]
bond (id 6), (id 37)
set_bond stick_color, color19, (id 6), (id 37)

set_color color20,[255, 120, 0]
bond (id 18), (id 19)
set_bond stick_color, color20, (id 18), (id 19)

set_color color21,[12, 255, 0]
bond (id 20), (id 23)
set_bond stick_color, color21, (id 20), (id 23)

set_color color22,[52, 255, 0]
bond (id 23), (id 24)
set_bond stick_color, color22, (id 23), (id 24)

set_color color23,[52, 255, 0]
bond (id 23), (id 25)
set_bond stick_color, color23, (id 23), (id 25)

set_color color24,[54, 255, 0]
bond (id 23), (id 26)
set_bond stick_color, color24, (id 23), (id 26)

set_color color25,[55, 255, 0]
bond (id 37), (id 38)
set_bond stick_color, color25, (id 37), (id 38)

set_color color26,[46, 255, 0]
bond (id 38), (id 39)
set_bond stick_color, color26, (id 38), (id 39)

set_color color27,[44, 255, 0]
bond (id 38), (id 40)
set_bond stick_color, color27, (id 38), (id 40)

set_color color28,[43, 255, 0]
bond (id 38), (id 41)
set_bond stick_color, color28, (id 38), (id 41)

set_color color29,[255, 56, 0]
bond (id 20), (id 21)
set_bond stick_color, color29, (id 20), (id 21)

set_color color30,[255, 0, 0]
bond (id 21), (id 22)
set_bond stick_color, color30, (id 21), (id 22)

set_color colorring1,[57, 255, 0]
color colorring1, id 26+27+28+29+30+31+32+33+34+35+36


