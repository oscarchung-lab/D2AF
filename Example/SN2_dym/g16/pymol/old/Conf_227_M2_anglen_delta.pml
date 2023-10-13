# Max change:      -7.57191867
# Min change:     -33.71935690

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_227.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[188, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[197, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[0, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color3, (id 1), (id 5)

set_color color4,[67, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color4, (id 1), (id 3)


