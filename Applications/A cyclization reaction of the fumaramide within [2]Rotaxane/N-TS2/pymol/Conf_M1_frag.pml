# Max Energy:       8.48942528
# Min Energy:      -0.70709584
# median Energy:    3.89116472

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[121, 255, 0]
color color1, id 46+47+48+49+50+51+52+53+54+55+56

set_color color2,[140, 255, 0]
color color2, id 30+31+32+33+34+35+36+37+38+39+40+41+42

set_color color3,[112, 255, 0]
color color3, id 19+20+21+22+23+24+25+26+27+28+29

set_color color4,[114, 255, 0]
color color4, id 8+9+10+11+12+13+14+15+16+17+18

set_color color5,[133, 255, 0]
color color5, id 5+6+7

set_color color6,[113, 255, 0]
color color6, id 43+44+45

set_color color7,[224, 255, 0]
color color7, id 3

set_color color8,[255, 0, 0]
color color8, id 1+2+59+60+61+62+63+65

set_color color9,[0, 255, 0]
color color9, id 4

set_color color10,[129, 255, 0]
color color10, id 57+58+64


