# Max change:       5.79607371
# Min change:       0.09468187

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 172, 0]
bond (id 1), (id 30)
set_bond stick_color, color1, (id 1), (id 30)

set_color color2,[255, 62, 0]
bond (id 1), (id 36)
set_bond stick_color, color2, (id 1), (id 36)

set_color color3,[255, 234, 0]
bond (id 9), (id 12)
set_bond stick_color, color3, (id 9), (id 12)

set_color color4,[255, 207, 0]
bond (id 12), (id 13)
set_bond stick_color, color4, (id 12), (id 13)

set_color color5,[255, 222, 0]
bond (id 12), (id 14)
set_bond stick_color, color5, (id 12), (id 14)

set_color color6,[255, 201, 0]
bond (id 2), (id 16)
set_bond stick_color, color6, (id 2), (id 16)

set_color color7,[255, 201, 0]
bond (id 16), (id 17)
set_bond stick_color, color7, (id 16), (id 17)

set_color color8,[255, 192, 0]
bond (id 18), (id 19)
set_bond stick_color, color8, (id 18), (id 19)

set_color color9,[255, 137, 0]
bond (id 18), (id 30)
set_bond stick_color, color9, (id 18), (id 30)

set_color color10,[255, 140, 0]
bond (id 30), (id 31)
set_bond stick_color, color10, (id 30), (id 31)

set_color color11,[255, 225, 0]
bond (id 1), (id 32)
set_bond stick_color, color11, (id 1), (id 32)

set_color color12,[255, 159, 0]
bond (id 32), (id 35)
set_bond stick_color, color12, (id 32), (id 35)

set_color color13,[255, 193, 0]
bond (id 32), (id 33)
set_bond stick_color, color13, (id 32), (id 33)

set_color color14,[255, 250, 0]
bond (id 32), (id 34)
set_bond stick_color, color14, (id 32), (id 34)

set_color color15,[255, 196, 0]
bond (id 36), (id 38)
set_bond stick_color, color15, (id 36), (id 38)

set_color color16,[255, 0, 0]
bond (id 36), (id 39)
set_bond stick_color, color16, (id 36), (id 39)

set_color color17,[255, 200, 0]
bond (id 39), (id 41)
set_bond stick_color, color17, (id 39), (id 41)

set_color color18,[255, 159, 0]
bond (id 39), (id 42)
set_bond stick_color, color18, (id 39), (id 42)

set_color color19,[255, 247, 0]
bond (id 39), (id 40)
set_bond stick_color, color19, (id 39), (id 40)


