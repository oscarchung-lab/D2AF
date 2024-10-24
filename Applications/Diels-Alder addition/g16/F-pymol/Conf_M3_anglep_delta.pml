# Max change:       5.22751919
# Min change:       0.14981570

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

set_color color4,[255, 247, 0]
bond (id 17), (id 18)
set_bond stick_color, color4, (id 17), (id 18)

set_color color5,[255, 146, 0]
bond (id 17), (id 21)
set_bond stick_color, color5, (id 17), (id 21)

set_color color6,[255, 0, 0]
bond (id 21), (id 23)
set_bond stick_color, color6, (id 21), (id 23)

set_color color7,[255, 153, 0]
bond (id 19), (id 21)
set_bond stick_color, color7, (id 19), (id 21)

set_color color8,[255, 202, 0]
bond (id 21), (id 22)
set_bond stick_color, color8, (id 21), (id 22)


