reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_2.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 1+2+3

set_color color2,[0.0, 1.0, 0.0]
color color2, id 4+5+6

set_color color3,[0.0, 0.0, 1.0]
color color3, id 7

set_color color4,[1.0, 1.0, 0.0]
color color4, id 8+9+10+11

set_color color5,[1.0, 0.0, 1.0]
color color5, id 12+13+14

set_color color6,[0.0, 1.0, 1.0]
color color6, id 15+16+17

set_color color7,[0.99, 0.82, 0.65]
color color7, id 18

set_color color8,[0.65, 0.32, 0.17]
color color8, id 19+20+21

set_color color9,[0.2, 0.6, 0.2]
color color9, id 22+23+24+25+26+27+28+29+30+31

set_color color10,[0.1, 0.1, 0.6]
color color10, id 32+33+34+35

set_color color11,[0.72, 0.55, 0.3]
color color11, id 36+37+38+39+40+41+42+43+48

set_color color12,[0.6, 0.1, 0.6]
color color12, id 44+45+46+47

set_color color13,[0.4, 0.7, 0.7]
color color13, id 49+50

set_color color14,[0.85, 0.85, 1.0]
color color14, id 51+52+53+54+55+56+57+58

set_color color15,[1.0, 0.6, 0.6]
color color15, id 59+60+61+62+63+64+65+66+67+68


