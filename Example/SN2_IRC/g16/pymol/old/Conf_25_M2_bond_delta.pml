# Max change:       0.01194399
# Min change:      -0.00387610

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_25.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[113, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[2, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color2, (id 3), (id 4)

set_color color3,[0, 255, 0]
bond (id 3), (id 5)
set_bond stick_color, color3, (id 3), (id 5)

set_color color4,[2, 255, 0]
bond (id 3), (id 6)
set_bond stick_color, color4, (id 3), (id 6)

set_color color5,[255, 0, 0]
bond (id 3), (id 7)
set_bond stick_color, color5, (id 3), (id 7)


