# Max Energy:       6.65830981
# Min Energy:      -3.84241244
# median Energy:    1.40794868

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 208, 0]
color color1, id 1+2+3+4+5+6+11+12+13+14


