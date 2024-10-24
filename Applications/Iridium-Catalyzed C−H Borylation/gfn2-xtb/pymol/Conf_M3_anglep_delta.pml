# Max change:       2.18590444
# Min change:       0.01724984

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 166, 0]
bond (id 3), (id 9)
set_bond stick_color, color1, (id 3), (id 9)

set_color color2,[255, 166, 0]
bond (id 3), (id 10)
set_bond stick_color, color2, (id 3), (id 10)

set_color color3,[255, 252, 0]
bond (id 2), (id 4)
set_bond stick_color, color3, (id 2), (id 4)

set_color color4,[255, 221, 0]
bond (id 4), (id 11)
set_bond stick_color, color4, (id 4), (id 11)

set_color color5,[255, 217, 0]
bond (id 2), (id 5)
set_bond stick_color, color5, (id 2), (id 5)

set_color color6,[255, 210, 0]
bond (id 5), (id 12)
set_bond stick_color, color6, (id 5), (id 12)

set_color color7,[255, 139, 0]
bond (id 11), (id 21)
set_bond stick_color, color7, (id 11), (id 21)

set_color color8,[255, 176, 0]
bond (id 11), (id 12)
set_bond stick_color, color8, (id 11), (id 12)

set_color color9,[255, 227, 0]
bond (id 11), (id 22)
set_bond stick_color, color9, (id 11), (id 22)

set_color color10,[255, 228, 0]
bond (id 12), (id 24)
set_bond stick_color, color10, (id 12), (id 24)

set_color color11,[255, 252, 0]
bond (id 12), (id 23)
set_bond stick_color, color11, (id 12), (id 23)

set_color color12,[255, 215, 0]
bond (id 6), (id 13)
set_bond stick_color, color12, (id 6), (id 13)

set_color color13,[255, 192, 0]
bond (id 13), (id 25)
set_bond stick_color, color13, (id 13), (id 25)

set_color color14,[255, 204, 0]
bond (id 6), (id 14)
set_bond stick_color, color14, (id 6), (id 14)

set_color color15,[255, 204, 0]
bond (id 14), (id 26)
set_bond stick_color, color15, (id 14), (id 26)

set_color color16,[255, 164, 0]
bond (id 19), (id 20)
set_bond stick_color, color16, (id 19), (id 20)

set_color color17,[255, 231, 0]
bond (id 19), (id 33)
set_bond stick_color, color17, (id 19), (id 33)

set_color color18,[255, 234, 0]
bond (id 19), (id 34)
set_bond stick_color, color18, (id 19), (id 34)

set_color color19,[255, 224, 0]
bond (id 10), (id 20)
set_bond stick_color, color19, (id 10), (id 20)

set_color color20,[255, 122, 0]
bond (id 20), (id 35)
set_bond stick_color, color20, (id 20), (id 35)

set_color color21,[255, 228, 0]
bond (id 20), (id 36)
set_bond stick_color, color21, (id 20), (id 36)

set_color color22,[255, 168, 0]
bond (id 25), (id 37)
set_bond stick_color, color22, (id 25), (id 37)

set_color color23,[255, 172, 0]
bond (id 25), (id 26)
set_bond stick_color, color23, (id 25), (id 26)

set_color color24,[255, 240, 0]
bond (id 26), (id 39)
set_bond stick_color, color24, (id 26), (id 39)

set_color color25,[255, 241, 0]
bond (id 26), (id 40)
set_bond stick_color, color25, (id 26), (id 40)

set_color color26,[255, 0, 0]
bond (id 1), (id 2)
set_bond stick_color, color26, (id 1), (id 2)

set_color color27,[255, 190, 0]
bond (id 1), (id 3)
set_bond stick_color, color27, (id 1), (id 3)

set_color color28,[255, 64, 0]
bond (id 1), (id 6)
set_bond stick_color, color28, (id 1), (id 6)


