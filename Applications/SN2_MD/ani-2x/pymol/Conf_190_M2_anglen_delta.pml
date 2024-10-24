# Max change:     -18.32832448
# Min change:     -51.68771540

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_190.xyz, mol 
show_as licorice, mol
color grey, mol
color green, id 6
unbond id 1, id 6

# Adding a representation with the appropriate colorID for each bond

set_color color1,[130, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[164, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[0, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color3, (id 1), (id 5)

set_color color4,[153, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color4, (id 1), (id 3)


