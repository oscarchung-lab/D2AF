reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 116, id 119
unbond id 118, id 130
unbond id 116, id 119

unbond id 118, id 130

 unbond id 15, id 18

 unbond id 15, id 20


# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 116+117+118

set_color color2,[0.0, 1.0, 0.0]
color color2, id 28+33+34

set_color color3,[0.0, 0.0, 1.0]
color color3, id 25+31+32

set_color color4,[1.0, 1.0, 0.0]
color color4, id 22+26+27

set_color color5,[1.0, 0.0, 1.0]
color color5, id 24+29+30

set_color color6,[0.0, 1.0, 1.0]
color color6, id 113+114

set_color color7,[0.99, 0.82, 0.65]
color color7, id 21+23

set_color color8,[0.65, 0.32, 0.17]
color color8, id 15+16+17+18+19+20+115

set_color color9,[0.2, 0.6, 0.2]
color color9, id 35+36+38+39+40+41+42+43+44+45+46+47+48+49+50

set_color color10,[0.1, 0.1, 0.6]
color color10, id 37+51+130

set_color color11,[0.72, 0.55, 0.3]
color color11, id 62

set_color color12,[0.6, 0.1, 0.6]
color color12, id 53+54+55+56+57+58+59+60+61

set_color color13,[0.4, 0.7, 0.7]
color color13, id 52+63+64+65+66

set_color color14,[0.85, 0.85, 1.0]
color color14, id 67+68+69+70+71+72+73+74+75+131+132+133+134+135+136+137+138

set_color color15,[1.0, 0.6, 0.6]
color color15, id 82+83+84+85

set_color color16,[0.55, 0.7, 0.4]
color color16, id 76+77+78+79+80+81

set_color color17,[0.75, 0.75, 1.0]
color color17, id 86+95

set_color color18,[0.75, 1.0, 0.25]
color color18, id 87

set_color color19,[1.0, 0.75, 0.87]
color color19, id 88+89+90

set_color color20,[0.0, 0.75, 0.75]
color color20, id 91+92+93+94

set_color color21,[1.0, 0.75, 0.87]
color color21, id 96+97+98+99+100+101+102+103+104+105+106+107+108+109+110+111+112

set_color color22,[1.0, 0.0, 0.0]
color color22, id 126+127+128+129

set_color color23,[0.0, 1.0, 0.0]
color color23, id 122+123+124+125

set_color color24,[0.0, 0.0, 1.0]
color color24, id 119+120+121

set_color color25,[1.0, 1.0, 0.0]
color color25, id 12+13+14

set_color color26,[1.0, 0.0, 1.0]
color color26, id 11

set_color color27,[0.0, 1.0, 1.0]
color color27, id 1+2+3+4+5+6+7+8+9+10


