# Max Energy:       6.51460251
# Min Energy:      -1.63330071
# median Energy:    2.44065090

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 47,id 74

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 4, 0]
color color1, id 1+2+3+4+5+7+8+9+10+12+13+32+33+38+41+45+47

set_color color2,[222, 255, 0]
color color2, id 38+39+40+41+42+43+44+45+46

set_color color3,[222, 255, 0]
color color3, id 42+46

set_color color4,[225, 255, 0]
color color4, id 58+59+60+61

set_color color5,[0, 255, 0]
color color5, id 48+49+50

set_color color6,[243, 255, 0]
color color6, id 51+52+53

set_color color7,[220, 255, 0]
color color7, id 54+55+56+57

set_color color8,[245, 255, 0]
color color8, id 62+63+64+65+66+67+68+69+70+71+72

set_color color9,[255, 0, 0]
color color9, id 73+74

set_color color10,[226, 255, 0]
color color10, id 79+80+81+82

set_color color11,[230, 255, 0]
color color11, id 75+76+77+78

set_color color12,[223, 255, 0]
color color12, id 19+21+27+29

set_color color13,[223, 255, 0]
color color13, id 18+20+26+28

set_color color14,[229, 255, 0]
color color14, id 14+16+22+24

set_color color15,[226, 255, 0]
color color15, id 15+17+23+25

set_color color16,[201, 255, 0]
color color16, id 6+30+34

set_color color17,[189, 255, 0]
color color17, id 11+31+35


