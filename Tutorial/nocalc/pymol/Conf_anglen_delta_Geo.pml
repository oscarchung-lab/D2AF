# Max change:      -0.33335626
# Min change:     -30.70795557

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[0, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[162, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[81, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color3, (id 2), (id 3)

set_color color4,[250, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color4, (id 4), (id 5)

set_color color5,[233, 255, 0]
bond (id 4), (id 14)
set_bond stick_color, color5, (id 4), (id 14)

set_color color6,[234, 255, 0]
bond (id 7), (id 8)
set_bond stick_color, color6, (id 7), (id 8)

set_color color7,[234, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color7, (id 8), (id 9)

set_color color8,[226, 255, 0]
bond (id 7), (id 11)
set_bond stick_color, color8, (id 7), (id 11)

set_color color9,[212, 255, 0]
bond (id 11), (id 14)
set_bond stick_color, color9, (id 11), (id 14)

set_color color10,[251, 255, 0]
bond (id 14), (id 15)
set_bond stick_color, color10, (id 14), (id 15)

set_color color11,[252, 255, 0]
bond (id 14), (id 16)
set_bond stick_color, color11, (id 14), (id 16)


