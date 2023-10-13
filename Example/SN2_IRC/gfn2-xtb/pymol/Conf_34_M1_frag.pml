# Max Energy:      59.80507095
# Min Energy:       0.04610133
# median Energy:   29.92558614

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_34.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 2, id 3

# Adding a representation with the appropriate colorID for each bond

set_color color1,[16, 255, 0]
color color1, id 1+2

set_color color2,[105, 255, 0]
color color2, id 3+4+5+6

set_color color3,[96, 255, 0]
color color3, id 7


