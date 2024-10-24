# Max Energy:      58.18770774
# Min Energy:      -0.47845269
# median Energy:   28.85462752

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
color color1, id 49+50+51+52+53+54+55+56

set_color color2,[84, 255, 0]
color color2, id 53+55+57+58+59+60+61+62+63+64

set_color color3,[54, 255, 0]
color color3, id 7+15+16+27+28+29+41+42+43+47

set_color color4,[33, 255, 0]
color color4, id 8+17+18+30+31+32+44+45+46+48


