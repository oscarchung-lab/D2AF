# Max Energy:      59.80507095
# Min Energy:       0.04610133
# median Energy:   29.92558614

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_109.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[16, 255, 0]
color color1, id 1+2

set_color color2,[255, 25, 0]
color color2, id 3+4+5+6

set_color color3,[255, 80, 0]
color color3, id 7


