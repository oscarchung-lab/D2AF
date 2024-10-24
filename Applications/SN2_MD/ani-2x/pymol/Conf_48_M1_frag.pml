# Max Energy:     244.38566205
# Min Energy:      -4.40774723
# median Energy:  119.98895741

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_48.xyz, mol 
show_as licorice, mol
color grey, mol
color green, id 6
unbond id 1, id 6

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 212, 0]
color color1, id 1+2+3+4

set_color color2,[226, 255, 0]
color color2, id 5

set_color color3,[155, 255, 0]
color color3, id 6


