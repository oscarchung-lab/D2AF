# Max Energy:       3.62782607
# Min Energy:      -0.14480672
# median Energy:    1.74150968

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
hide sticks, hydrogens

# Adding a representation with the appropriate colorID for each bond

set_color color1,[124, 255, 0]
color color1, id 55+64+65+77+78+79+80+89+91+97

set_color color2,[19, 255, 0]
color color2, id 54+62+63+73+74+75+76+86+88+95

set_color color3,[48, 255, 0]
color color3, id 46+52+53+58+59+60+61+70+72+84

set_color color4,[34, 255, 0]
color color4, id 51+56+57+66+67+68+69+81+83+92

set_color color5,[43, 255, 0]
color color5, id 3+8+9+18+19+20+21+33+34+44

set_color color6,[0, 255, 0]
color color6, id 7+16+17+29+30+31+32+41+42+49

set_color color7,[55, 255, 0]
color color7, id 6+14+15+25+26+27+28+38+39+47

set_color color8,[73, 255, 0]
color color8, id 2+4+5+10+11+12+13+22+23+36

set_color color9,[0, 255, 0]
color color9, id 103+112+113+125+126+127+128+134+135+138

set_color color10,[71, 255, 0]
color color10, id 94+100+101+106+107+108+109+119+120+131

set_color color11,[61, 255, 0]
color color11, id 102+110+111+121+122+123+124+132+133+137

set_color color12,[43, 255, 0]
color color12, id 99+104+105+114+115+116+117+129+130+136


