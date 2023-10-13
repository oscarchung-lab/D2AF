# Max Energy:       9.41873385
# Min Energy:      -0.67505183
# median Energy:    4.37184101

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_1.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[155, 255, 0]
color color1, id 22+23+24+25+26+27+28+29+30+31

set_color color2,[189, 255, 0]
color color2, id 36+37+38+39+40+41+42+43+48

set_color color3,[197, 255, 0]
color color3, id 51+52+53+54+55+56+57+58

set_color color4,[152, 255, 0]
color color4, id 59+60+61+62+63+64+65+66+67+68


