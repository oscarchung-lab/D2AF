# Max Energy:      42.87372090
# Min Energy:      -0.58503228
# median Energy:   21.14434431

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 1, id 52

# Adding a representation with the appropriate colorID for each bond

set_color color1,[97, 255, 0]
color color1, id 53+55+57+58+59+60+61+62+63+64

set_color color2,[71, 255, 0]
color color2, id 7+15+16+27+28+29+41+42+43+47

set_color color3,[52, 255, 0]
color color3, id 8+17+18+30+31+32+44+45+46+48


