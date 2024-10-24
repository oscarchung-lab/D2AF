# Max Energy:      61.98122658
# Min Energy:      -0.10496109
# median Energy:   30.93813275

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 1,id 52
bond id 49,id 52

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 192, 0]
color color1, id 1+2+3+6+7+8+15+16+17+18+27+28+29+30+31+32+41+42+43+44+45+46+47+48

set_color color2,[12, 255, 0]
color color2, id 13

set_color color3,[12, 255, 0]
color color3, id 14

set_color color4,[30, 255, 0]
color color4, id 25+37+38

set_color color5,[18, 255, 0]
color color5, id 26+39+40

set_color color6,[26, 255, 0]
color color6, id 19+33+34

set_color color7,[25, 255, 0]
color color7, id 20+35+36

set_color color8,[12, 255, 0]
color color8, id 5

set_color color9,[12, 255, 0]
color color9, id 4

set_color color10,[31, 255, 0]
color color10, id 12+23+24

set_color color11,[13, 255, 0]
color color11, id 11+21+22

set_color color12,[12, 255, 0]
color color12, id 10

set_color color13,[12, 255, 0]
color color13, id 9

set_color color14,[255, 0, 0]
color color14, id 49+50+51+52+53+54+55+56

set_color color15,[56, 255, 0]
color color15, id 53+55+57+58+59+60+61+62+63+64

set_color color16,[24, 255, 0]
color color16, id 7+15+16+27+28+29+41+42+43+47

set_color color17,[0, 255, 0]
color color17, id 8+17+18+30+31+32+44+45+46+48


