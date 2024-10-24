# Max change:       4.97454487
# Min change:       0.04311655

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
bond (id 2), (id 3)
set_bond stick_color, color1, (id 2), (id 3)

set_color color2,[255, 57, 0]
bond (id 3), (id 4)
set_bond stick_color, color2, (id 3), (id 4)

set_color color3,[255, 44, 0]
bond (id 3), (id 5)
set_bond stick_color, color3, (id 3), (id 5)

set_color color4,[255, 136, 0]
bond (id 6), (id 7)
set_bond stick_color, color4, (id 6), (id 7)

set_color color5,[255, 234, 0]
bond (id 7), (id 8)
set_bond stick_color, color5, (id 7), (id 8)

set_color color6,[255, 186, 0]
bond (id 7), (id 9)
set_bond stick_color, color6, (id 7), (id 9)

set_color color7,[255, 225, 0]
bond (id 7), (id 10)
set_bond stick_color, color7, (id 7), (id 10)

set_color color8,[255, 214, 0]
bond (id 8), (id 11)
set_bond stick_color, color8, (id 8), (id 11)

set_color color9,[255, 232, 0]
bond (id 11), (id 12)
set_bond stick_color, color9, (id 11), (id 12)

set_color color10,[255, 247, 0]
bond (id 11), (id 13)
set_bond stick_color, color10, (id 11), (id 13)

set_color color11,[255, 244, 0]
bond (id 11), (id 14)
set_bond stick_color, color11, (id 11), (id 14)

set_color color12,[255, 244, 0]
bond (id 4), (id 18)
set_bond stick_color, color12, (id 4), (id 18)

set_color color13,[255, 238, 0]
bond (id 18), (id 19)
set_bond stick_color, color13, (id 18), (id 19)

set_color color14,[255, 247, 0]
bond (id 18), (id 21)
set_bond stick_color, color14, (id 18), (id 21)

set_color color15,[255, 252, 0]
bond (id 18), (id 20)
set_bond stick_color, color15, (id 18), (id 20)

set_color color16,[255, 245, 0]
bond (id 22), (id 23)
set_bond stick_color, color16, (id 22), (id 23)

set_color color17,[255, 240, 0]
bond (id 23), (id 24)
set_bond stick_color, color17, (id 23), (id 24)

set_color color18,[255, 244, 0]
bond (id 23), (id 26)
set_bond stick_color, color18, (id 23), (id 26)

set_color color19,[255, 248, 0]
bond (id 23), (id 25)
set_bond stick_color, color19, (id 23), (id 25)


