# Max Energy:      10.03993186
# Min Energy:      -0.45481378
# median Energy:    4.79255904

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[165, 255, 0]
color color1, id 1+2+3

set_color color2,[12, 255, 0]
color color2, id 4+5+6

set_color color3,[255, 176, 0]
color color3, id 7

set_color color4,[78, 255, 0]
color color4, id 8+9+10+11

set_color color5,[0, 255, 0]
color color5, id 12+13+14

set_color color6,[150, 255, 0]
color color6, id 15+16+17

set_color color7,[192, 255, 0]
color color7, id 18

set_color color8,[171, 255, 0]
color color8, id 19+20+21

set_color color9,[8, 255, 0]
color color9, id 22+23+24+25+26+27+28+29+30+31

set_color color10,[255, 132, 0]
color color10, id 32+33+34+35

set_color color11,[133, 255, 0]
color color11, id 36+37+38+39+40+41+42+43+48

set_color color12,[89, 255, 0]
color color12, id 44+45+46+47

set_color color13,[145, 255, 0]
color color13, id 49+50

set_color color14,[255, 0, 0]
color color14, id 51+52+53+54+55+56+57+58

set_color color15,[255, 192, 0]
color color15, id 59+60+61+62+63+64+65+66+67+68


