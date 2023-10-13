# Max change:       5.22751919
# Min change:       0.04387897

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

set_color color2,[255, 228, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[255, 235, 0]
bond (id 2), (id 3)
set_bond stick_color, color3, (id 2), (id 3)

set_color color4,[255, 212, 0]
bond (id 5), (id 6)
set_bond stick_color, color4, (id 5), (id 6)

set_color color5,[255, 180, 0]
bond (id 5), (id 9)
set_bond stick_color, color5, (id 5), (id 9)

set_color color6,[255, 246, 0]
bond (id 5), (id 14)
set_bond stick_color, color6, (id 5), (id 14)

set_color color7,[255, 221, 0]
bond (id 5), (id 15)
set_bond stick_color, color7, (id 5), (id 15)

set_color color8,[255, 198, 0]
bond (id 6), (id 7)
set_bond stick_color, color8, (id 6), (id 7)

set_color color9,[255, 169, 0]
bond (id 6), (id 10)
set_bond stick_color, color9, (id 6), (id 10)

set_color color10,[255, 235, 0]
bond (id 6), (id 11)
set_bond stick_color, color10, (id 6), (id 11)

set_color color11,[255, 252, 0]
bond (id 7), (id 8)
set_bond stick_color, color11, (id 7), (id 8)

set_color color12,[255, 246, 0]
bond (id 8), (id 15)
set_bond stick_color, color12, (id 8), (id 15)

set_color color13,[255, 248, 0]
bond (id 15), (id 16)
set_bond stick_color, color13, (id 15), (id 16)

set_color color14,[255, 247, 0]
bond (id 17), (id 18)
set_bond stick_color, color14, (id 17), (id 18)

set_color color15,[255, 146, 0]
bond (id 17), (id 21)
set_bond stick_color, color15, (id 17), (id 21)

set_color color16,[255, 0, 0]
bond (id 21), (id 23)
set_bond stick_color, color16, (id 21), (id 23)

set_color color17,[255, 153, 0]
bond (id 19), (id 21)
set_bond stick_color, color17, (id 19), (id 21)

set_color color18,[255, 202, 0]
bond (id 21), (id 22)
set_bond stick_color, color18, (id 21), (id 22)


