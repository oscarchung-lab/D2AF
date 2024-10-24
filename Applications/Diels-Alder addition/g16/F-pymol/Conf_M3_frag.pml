# Max Energy:      10.06695091
# Min Energy:      -0.43905460
# median Energy:    4.81394816

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
color color1, id 5+6+7+8+9+10+11+12+13+14+15+16


