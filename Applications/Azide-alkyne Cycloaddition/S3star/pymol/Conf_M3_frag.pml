# Max Energy:      10.69210838
# Min Energy:      -0.68497589
# median Energy:    5.00356624

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[116, 255, 0]
color color1, id 7+8+9+10+11+12+13+14+15+16+17


