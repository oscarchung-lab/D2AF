# Max Energy:       6.30771217
# Min Energy:      -0.89221024
# median Energy:    2.70775096

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 47,id 74

# Adding a representation with the appropriate colorID for each bond

set_color color1,[186, 255, 0]
color color1, id 62+63+64+65+66+67+68+69+70+71+72


