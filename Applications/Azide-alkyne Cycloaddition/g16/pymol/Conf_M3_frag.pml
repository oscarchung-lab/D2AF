# Max Energy:      11.22614888
# Min Energy:      -0.26382004
# median Energy:    5.48116442

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[57, 255, 0]
color color1, id 26+27+28+29+30+31+32+33+34+35+36


