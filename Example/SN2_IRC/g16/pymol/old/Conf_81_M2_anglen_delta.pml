# Max change:      -6.79365462
# Min change:     -20.38870648

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_81.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[170, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color1, (id 3), (id 4)

set_color color2,[0, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color2, (id 3), (id 7)

set_color color3,[169, 255, 0]
bond (id 3), (id 5)
set_bond stick_color, color3, (id 3), (id 5)

set_color color4,[170, 255, 0]
bond (id 3), (id 6)
set_bond stick_color, color4, (id 3), (id 6)


