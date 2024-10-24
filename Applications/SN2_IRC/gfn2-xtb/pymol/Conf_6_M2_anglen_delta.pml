# Max change:      -0.02836251
# Min change:      -0.03181811

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_6.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 2, id 3

# Adding a representation with the appropriate colorID for each bond

set_color color1,[2, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color1, (id 3), (id 4)

set_color color2,[27, 255, 0]
bond (id 3), (id 5)
set_bond stick_color, color2, (id 3), (id 5)

set_color color3,[0, 255, 0]
bond (id 3), (id 6)
set_bond stick_color, color3, (id 3), (id 6)


