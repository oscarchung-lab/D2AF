# Max change:       0.98939690
# Min change:       0.02805666

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 124, 0]
bond (id 1), (id 4)
set_bond stick_color, color1, (id 1), (id 4)

set_color color2,[255, 247, 0]
bond (id 4), (id 5)
set_bond stick_color, color2, (id 4), (id 5)

set_color color3,[255, 132, 0]
bond (id 4), (id 6)
set_bond stick_color, color3, (id 4), (id 6)

set_color color4,[255, 135, 0]
bond (id 20), (id 21)
set_bond stick_color, color4, (id 20), (id 21)

set_color color5,[255, 0, 0]
bond (id 20), (id 22)
set_bond stick_color, color5, (id 20), (id 22)

set_color color6,[255, 119, 0]
bond (id 20), (id 23)
set_bond stick_color, color6, (id 20), (id 23)

set_color color7,[255, 186, 0]
bond (id 24), (id 25)
set_bond stick_color, color7, (id 24), (id 25)

set_color color8,[255, 124, 0]
bond (id 24), (id 26)
set_bond stick_color, color8, (id 24), (id 26)

set_color color9,[255, 156, 0]
bond (id 24), (id 27)
set_bond stick_color, color9, (id 24), (id 27)


