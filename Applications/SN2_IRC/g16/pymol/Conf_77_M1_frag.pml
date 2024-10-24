# Max Energy:      65.43475974
# Min Energy:       0.00077127
# median Energy:   32.71776551

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_77.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 2, id 3

# Adding a representation with the appropriate colorID for each bond

set_color color1,[3, 255, 0]
color color1, id 1+2

set_color color2,[255, 114, 0]
color color2, id 3+4+5+6

set_color color3,[255, 131, 0]
color color3, id 7


