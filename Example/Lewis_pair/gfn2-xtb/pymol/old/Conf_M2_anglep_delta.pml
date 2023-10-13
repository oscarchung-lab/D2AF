# Max change:       6.13460340
# Min change:       0.16909008

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 208, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 116, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[255, 163, 0]
bond (id 1), (id 5)
set_bond stick_color, color3, (id 1), (id 5)

set_color color4,[255, 0, 0]
bond (id 4), (id 5)
set_bond stick_color, color4, (id 4), (id 5)

set_color color5,[255, 246, 0]
bond (id 4), (id 8)
set_bond stick_color, color5, (id 4), (id 8)

set_color color6,[255, 2, 0]
bond (id 5), (id 6)
set_bond stick_color, color6, (id 5), (id 6)

set_color color7,[255, 63, 0]
bond (id 5), (id 7)
set_bond stick_color, color7, (id 5), (id 7)

set_color color8,[255, 225, 0]
bond (id 8), (id 10)
set_bond stick_color, color8, (id 8), (id 10)

set_color color9,[255, 247, 0]
bond (id 10), (id 11)
set_bond stick_color, color9, (id 10), (id 11)

set_color color10,[255, 239, 0]
bond (id 10), (id 12)
set_bond stick_color, color10, (id 10), (id 12)

set_color color11,[255, 247, 0]
bond (id 10), (id 13)
set_bond stick_color, color11, (id 10), (id 13)

set_color color12,[255, 229, 0]
bond (id 9), (id 14)
set_bond stick_color, color12, (id 9), (id 14)

set_color color13,[255, 245, 0]
bond (id 14), (id 15)
set_bond stick_color, color13, (id 14), (id 15)

set_color color14,[255, 238, 0]
bond (id 14), (id 17)
set_bond stick_color, color14, (id 14), (id 17)


