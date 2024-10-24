# Max change:       1.72916533
# Min change:       0.03166026

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 250, 0]
bond (id 1), (id 4)
set_bond stick_color, color1, (id 1), (id 4)

set_color color2,[255, 250, 0]
bond (id 4), (id 6)
set_bond stick_color, color2, (id 4), (id 6)

set_color color3,[255, 163, 0]
bond (id 19), (id 20)
set_bond stick_color, color3, (id 19), (id 20)

set_color color4,[255, 47, 0]
bond (id 20), (id 23)
set_bond stick_color, color4, (id 20), (id 23)

set_color color5,[255, 139, 0]
bond (id 20), (id 21)
set_bond stick_color, color5, (id 20), (id 21)

set_color color6,[255, 0, 0]
bond (id 18), (id 24)
set_bond stick_color, color6, (id 18), (id 24)

set_color color7,[255, 85, 0]
bond (id 24), (id 25)
set_bond stick_color, color7, (id 24), (id 25)

set_color color8,[255, 100, 0]
bond (id 24), (id 26)
set_bond stick_color, color8, (id 24), (id 26)

set_color color9,[255, 237, 0]
bond (id 24), (id 27)
set_bond stick_color, color9, (id 24), (id 27)


