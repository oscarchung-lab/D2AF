# Max Energy:       7.79421543
# Min Energy:      -0.20578152
# median Energy:    3.79421695

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[46, 255, 0]
color color1, id 26+27+28+29+30+31+32+33+34+35+36


