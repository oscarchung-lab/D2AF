# Max change:      -0.00917475
# Min change:      -0.01471546

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_9.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 2, id 3

# Adding a representation with the appropriate colorID for each bond

set_color color1,[4, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color1, (id 3), (id 4)

set_color color2,[96, 255, 0]
bond (id 3), (id 5)
set_bond stick_color, color2, (id 3), (id 5)

set_color color3,[0, 255, 0]
bond (id 3), (id 6)
set_bond stick_color, color3, (id 3), (id 6)


