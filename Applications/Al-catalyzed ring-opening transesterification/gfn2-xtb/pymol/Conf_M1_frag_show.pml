reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 7,id 14

# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 15+26+27+28

set_color color2,[0.0, 1.0, 0.0]
color color2, id 6+14

set_color color3,[0.0, 0.0, 1.0]
color color3, id 25

set_color color4,[1.0, 1.0, 0.0]
color color4, id 41+53+54

set_color color5,[1.0, 0.0, 1.0]
color color5, id 52+62+63

set_color color6,[0.0, 1.0, 1.0]
color color6, id 49+60+61

set_color color7,[0.99, 0.82, 0.65]
color color7, id 38+50+51

set_color color8,[0.65, 0.32, 0.17]
color color8, id 24+39+40

set_color color9,[0.2, 0.6, 0.2]
color color9, id 1+2+3+7+22+31+35+36+44+45

set_color color10,[0.1, 0.1, 0.6]
color color10, id 8+16+17+29

set_color color11,[0.72, 0.55, 0.3]
color color11, id 9+18+19+30+32+42+43+46+55

set_color color12,[0.6, 0.1, 0.6]
color color12, id 4+10+11+20

set_color color13,[0.4, 0.7, 0.7]
color color13, id 5+12+13+21+23+33+34+37+47

set_color color14,[0.85, 0.85, 1.0]
color color14, id 56+64+65

set_color color15,[1.0, 0.6, 0.6]
color color15, id 57

set_color color16,[0.55, 0.7, 0.4]
color color16, id 67+71+72+73

set_color color17,[0.75, 0.75, 1.0]
color color17, id 66+68+69+70

set_color color18,[0.75, 1.0, 0.25]
color color18, id 48+58+59


