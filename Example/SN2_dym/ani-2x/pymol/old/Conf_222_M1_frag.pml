# Max Energy:     244.38566205
# Min Energy:      -4.40774723
# median Energy:  119.98895741

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_222.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 9, 0]
color color1, id 1+2+3+4

set_color color2,[255, 95, 0]
color color2, id 5

set_color color3,[155, 255, 0]
color color3, id 6


