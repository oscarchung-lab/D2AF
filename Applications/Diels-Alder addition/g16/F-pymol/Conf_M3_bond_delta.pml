# Max change:       0.05422032
# Min change:      -0.06574843

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[0, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[255, 254, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[255, 39, 0]
bond (id 1), (id 17)
set_bond stick_color, color3, (id 1), (id 17)

set_color color4,[255, 251, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)

set_color color5,[255, 0, 0]
bond (id 2), (id 19)
set_bond stick_color, color5, (id 2), (id 19)

set_color color6,[255, 250, 0]
bond (id 17), (id 18)
set_bond stick_color, color6, (id 17), (id 18)

set_color color7,[255, 249, 0]
bond (id 17), (id 21)
set_bond stick_color, color7, (id 17), (id 21)

set_color color8,[255, 242, 0]
bond (id 19), (id 20)
set_bond stick_color, color8, (id 19), (id 20)

set_color color9,[255, 223, 0]
bond (id 19), (id 21)
set_bond stick_color, color9, (id 19), (id 21)

set_color color10,[255, 243, 0]
bond (id 21), (id 22)
set_bond stick_color, color10, (id 21), (id 22)

set_color color11,[223, 255, 0]
bond (id 21), (id 23)
set_bond stick_color, color11, (id 21), (id 23)


