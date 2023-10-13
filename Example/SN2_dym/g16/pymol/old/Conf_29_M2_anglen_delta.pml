# Max change:      -2.41043343
# Min change:     -10.61459140

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_29.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[30, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[0, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[197, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color3, (id 1), (id 5)

set_color color4,[166, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color4, (id 1), (id 4)


