# Max change:       1.28309618
# Min change:      -0.12583420

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_222.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 243, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[128, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)

set_color color3,[0, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)

set_color color4,[255, 0, 0]
bond (id 1), (id 5)
set_bond stick_color, color4, (id 1), (id 5)


