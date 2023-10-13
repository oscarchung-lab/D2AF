# Max change:     -15.85716749
# Min change:     -55.05981485

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_242.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[181, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[91, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[0, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color3, (id 1), (id 5)

set_color color4,[161, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color4, (id 1), (id 4)


