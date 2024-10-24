# Max change:       1.53553493
# Min change:       0.18372000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 2, 0]
bond (id 12), (id 13)
set_bond stick_color, color1, (id 12), (id 13)

set_color color2,[255, 0, 0]
bond (id 13), (id 15)
set_bond stick_color, color2, (id 13), (id 15)

set_color color3,[255, 224, 0]
bond (id 13), (id 14)
set_bond stick_color, color3, (id 13), (id 14)

set_color color4,[255, 222, 0]
bond (id 13), (id 16)
set_bond stick_color, color4, (id 13), (id 16)

set_color color5,[255, 143, 0]
bond (id 12), (id 17)
set_bond stick_color, color5, (id 12), (id 17)

set_color color6,[255, 158, 0]
bond (id 17), (id 18)
set_bond stick_color, color6, (id 17), (id 18)

set_color color7,[255, 216, 0]
bond (id 17), (id 20)
set_bond stick_color, color7, (id 17), (id 20)


