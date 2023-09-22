# Max Energy:      40.88662514
# Min Energy:      -3.25136958
# median Energy:   18.81762778

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[188, 255, 0]
color color1, id 3+4+5+6

set_color color2,[255, 0, 0]
color color2, id 20+63+64

set_color color3,[87, 255, 0]
color color3, id 21

set_color color4,[149, 255, 0]
color color4, id 23

set_color color5,[0, 255, 0]
color color5, id 22

set_color color6,[193, 255, 0]
color color6, id 55+56+57+58

set_color color7,[211, 255, 0]
color color7, id 35+36+37+38+39+40+41+42+43+44+45+46+47+48+49+50+81+82+83+84+85+86+87+88+89+90+91+92+93+94+95+96

set_color color8,[192, 255, 0]
color color8, id 69+70+71+72

set_color color9,[193, 255, 0]
color color9, id 65+66+67+68

set_color color10,[178, 255, 0]
color color10, id 61+62

set_color color11,[196, 255, 0]
color color11, id 59+60

set_color color12,[189, 255, 0]
color color12, id 77+78+79+80

set_color color13,[190, 255, 0]
color color13, id 73+74+75+76

set_color color14,[196, 255, 0]
color color14, id 51+52+53+54

set_color color15,[180, 255, 0]
color color15, id 24+25+26+27+28+29+30+31+32+33+34

set_color color16,[219, 255, 0]
color color16, id 8+9+10+11+12+13+14+15+16+17+18

set_color color17,[255, 120, 0]
color color17, id 1+2+7+19


