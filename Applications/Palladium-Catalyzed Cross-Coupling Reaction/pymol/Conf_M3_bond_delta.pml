# Max change:       0.14628185
# Min change:      -0.00137779

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 223, 0]
bond (id 1), (id 7)
set_bond stick_color, color1, (id 1), (id 7)

set_color color2,[255, 244, 0]
bond (id 4), (id 11)
set_bond stick_color, color2, (id 4), (id 11)

set_color color3,[255, 234, 0]
bond (id 6), (id 9)
set_bond stick_color, color3, (id 6), (id 9)

set_color color4,[255, 0, 0]
bond (id 12), (id 13)
set_bond stick_color, color4, (id 12), (id 13)

set_color color5,[255, 147, 0]
bond (id 12), (id 17)
set_bond stick_color, color5, (id 12), (id 17)

set_color color6,[74, 255, 0]
bond (id 13), (id 14)
set_bond stick_color, color6, (id 13), (id 14)

set_color color7,[218, 255, 0]
bond (id 13), (id 15)
set_bond stick_color, color7, (id 13), (id 15)

set_color color8,[0, 255, 0]
bond (id 13), (id 16)
set_bond stick_color, color8, (id 13), (id 16)

set_color color9,[255, 254, 0]
bond (id 17), (id 18)
set_bond stick_color, color9, (id 17), (id 18)

set_color color10,[242, 255, 0]
bond (id 17), (id 19)
set_bond stick_color, color10, (id 17), (id 19)

set_color color11,[255, 253, 0]
bond (id 17), (id 20)
set_bond stick_color, color11, (id 17), (id 20)


