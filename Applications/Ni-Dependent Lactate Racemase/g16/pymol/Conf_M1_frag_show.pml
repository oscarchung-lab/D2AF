reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 33,id 48

# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 1+2+3+4+5+6+7+8+62

set_color color2,[0.0, 1.0, 0.0]
color color2, id 55

set_color color3,[0.0, 0.0, 1.0]
color color3, id 50+56

set_color color4,[1.0, 1.0, 0.0]
color color4, id 48+49

set_color color5,[1.0, 0.0, 1.0]
color color5, id 51+52+53+54

set_color color6,[0.0, 1.0, 1.0]
color color6, id 58+59

set_color color7,[0.99, 0.82, 0.65]
color color7, id 23+26+28+31+32+34+35+43+44+45+46+47+57+63

set_color color8,[0.65, 0.32, 0.17]
color color8, id 24+25+41

set_color color9,[0.2, 0.6, 0.2]
color color9, id 16+17+19+21+22+27+29+30+33+36+37+38+39+42

set_color color10,[0.1, 0.1, 0.6]
color color10, id 13+14+20+60

set_color color11,[0.72, 0.55, 0.3]
color color11, id 15+18

set_color color12,[0.6, 0.1, 0.6]
color color12, id 9+10+11+12+40+61


