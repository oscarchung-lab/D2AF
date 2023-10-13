# Max Energy:     177.50135517
# Min Energy:      -3.53726697
# median Energy:   86.98204410

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_102.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 214, 0]
color color1, id 1+2+3+4

set_color color2,[69, 255, 0]
color color2, id 5

set_color color3,[148, 255, 0]
color color3, id 6


