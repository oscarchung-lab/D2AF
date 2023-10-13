# Max Energy:       6.51867800
# Min Energy:      -1.51189718
# median Energy:    2.50339041

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[215, 255, 0]
color color1, id 26+27+28+29+30+31+32+33+34+35+36


