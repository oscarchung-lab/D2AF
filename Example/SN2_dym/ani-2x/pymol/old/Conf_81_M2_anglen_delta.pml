# Max change:      -3.08907451
# Min change:     -11.93664041

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_81.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[65, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[0, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[189, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color3, (id 1), (id 5)


