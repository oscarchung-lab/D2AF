reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
hide sticks, hydrogens

# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 55+64+65+77+78+79+80+89+91+97

set_color color2,[0.0, 1.0, 0.0]
color color2, id 54+62+63+73+74+75+76+86+88+95

set_color color3,[0.0, 0.0, 1.0]
color color3, id 46+52+53+58+59+60+61+70+72+84

set_color color4,[1.0, 1.0, 0.0]
color color4, id 51+56+57+66+67+68+69+81+83+92

set_color color5,[1.0, 0.0, 1.0]
color color5, id 1+2+3+4+5+6+7+8+9+10+11+12+13+14+15+16+17+18+19+20+21+22+23+25+26+27+28+29+30+31+32+33+36+38+39+41+42+44+47+49

set_color color6,[0.0, 1.0, 1.0]
color color6, id 94+99+100+101+102+103+104+105+106+107+108+109+110+111+112+113+114+115+116+117+118+119+120+121+122+123+124+125+126+127+128+129+130+131+132+133+134+135+136+137+138

set_color color7,[0.99, 0.82, 0.65]
color color7, id 82+93

set_color color8,[0.65, 0.32, 0.17]
color color8, id 35+45

set_color color9,[0.2, 0.6, 0.2]
color color9, id 71+85

set_color color10,[0.1, 0.1, 0.6]
color color10, id 24+37

set_color color11,[0.72, 0.55, 0.3]
color color11, id 87+96

set_color color12,[0.6, 0.1, 0.6]
color color12, id 40+48

set_color color13,[0.4, 0.7, 0.7]
color color13, id 90+98

set_color color14,[0.85, 0.85, 1.0]
color color14, id 43+50

set_color color15,[1.0, 0.6, 0.6]
color color15, id 143+148

set_color color16,[0.55, 0.7, 0.4]
color color16, id 145+147+149+150

set_color color17,[0.75, 0.75, 1.0]
color color17, id 139+140+142+144

set_color color18,[0.75, 1.0, 0.25]
color color18, id 141+146

set_color color19,[1.0, 0.75, 0.87]
color color19, id 155+157+158+159

set_color color20,[0.0, 0.75, 0.75]
color color20, id 151+152+153+154

set_color color21,[1.0, 0.75, 0.87]
color color21, id 156+160+161+162+163


