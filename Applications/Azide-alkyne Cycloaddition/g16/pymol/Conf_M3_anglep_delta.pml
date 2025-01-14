# Max change:       2.70654060
# Min change:       0.01393732

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 245, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 200, 0]
bond (id 1), (id 5)
set_bond stick_color, color2, (id 1), (id 5)

set_color color3,[255, 243, 0]
bond (id 1), (id 7)
set_bond stick_color, color3, (id 1), (id 7)

set_color color4,[255, 191, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)

set_color color5,[255, 242, 0]
bond (id 2), (id 8)
set_bond stick_color, color5, (id 2), (id 8)

set_color color6,[255, 249, 0]
bond (id 2), (id 11)
set_bond stick_color, color6, (id 2), (id 11)

set_color color7,[255, 0, 0]
bond (id 3), (id 4)
set_bond stick_color, color7, (id 3), (id 4)

set_color color8,[255, 234, 0]
bond (id 3), (id 9)
set_bond stick_color, color8, (id 3), (id 9)

set_color color9,[255, 54, 0]
bond (id 4), (id 19)
set_bond stick_color, color9, (id 4), (id 19)

set_color color10,[255, 72, 0]
bond (id 5), (id 6)
set_bond stick_color, color10, (id 5), (id 6)

set_color color11,[255, 215, 0]
bond (id 5), (id 16)
set_bond stick_color, color11, (id 5), (id 16)

set_color color12,[255, 253, 0]
bond (id 6), (id 17)
set_bond stick_color, color12, (id 6), (id 17)

set_color color13,[255, 127, 0]
bond (id 6), (id 18)
set_bond stick_color, color13, (id 6), (id 18)

set_color color14,[255, 236, 0]
bond (id 6), (id 37)
set_bond stick_color, color14, (id 6), (id 37)

set_color color15,[255, 236, 0]
bond (id 37), (id 38)
set_bond stick_color, color15, (id 37), (id 38)

set_color color16,[255, 248, 0]
bond (id 38), (id 39)
set_bond stick_color, color16, (id 38), (id 39)

set_color color17,[255, 243, 0]
bond (id 38), (id 41)
set_bond stick_color, color17, (id 38), (id 41)

set_color color18,[255, 249, 0]
bond (id 38), (id 40)
set_bond stick_color, color18, (id 38), (id 40)


