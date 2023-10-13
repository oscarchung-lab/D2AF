# Max Energy:     177.50135517
# Min Energy:      -3.53726697
# median Energy:   86.98204410

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_225.xyz, mol 
show_as licorice, mol
color grey, mol
color green, id 6
unbond id 1, id 6

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 36, 0]
color color1, id 1+2+3+4

set_color color2,[255, 58, 0]
color color2, id 5

set_color color3,[148, 255, 0]
color color3, id 6


