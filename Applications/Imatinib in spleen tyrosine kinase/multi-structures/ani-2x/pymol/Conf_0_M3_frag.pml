# Max Energy:      10.82240601
# Min Energy:      -0.46814727
# median Energy:    5.17712937

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_0.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[73, 255, 0]
color color1, id 22+23+24+25+26+27+28+29+30+31

set_color color2,[187, 255, 0]
color color2, id 36+37+38+39+40+41+42+43+48

set_color color3,[255, 0, 0]
color color3, id 51+52+53+54+55+56+57+58

set_color color4,[255, 185, 0]
color color4, id 59+60+61+62+63+64+65+66+67+68


