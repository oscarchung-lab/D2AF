# Max Energy:       4.73931464
# Min Energy:      -2.38941654
# median Energy:    1.17494905

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[247, 255, 0]
color color1, id 1+2+3+4+5+6+11+12+13+14


