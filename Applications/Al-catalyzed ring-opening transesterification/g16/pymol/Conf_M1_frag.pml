# Max Energy:      13.65275139
# Min Energy:      -2.31212247
# median Energy:    5.67031446

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 7,id 14

# Adding a representation with the appropriate colorID for each bond

set_color color1,[71, 255, 0]
color color1, id 15+26+27+28

set_color color2,[46, 255, 0]
color color2, id 41+53+54

set_color color3,[73, 255, 0]
color color3, id 52+62+63

set_color color4,[76, 255, 0]
color color4, id 49+60+61

set_color color5,[70, 255, 0]
color color5, id 38+50+51

set_color color6,[72, 255, 0]
color color6, id 24+39+40

set_color color7,[77, 255, 0]
color color7, id 56+64+65

set_color color8,[65, 255, 0]
color color8, id 57

set_color color9,[73, 255, 0]
color color9, id 67+71+72+73

set_color color10,[74, 255, 0]
color color10, id 66+68+69+70

set_color color11,[67, 255, 0]
color color11, id 48+58+59

set_color color12,[230, 255, 0]
color color12, id 1+2+3+7+22+31+35+36+44+45

set_color color13,[73, 255, 0]
color color13, id 3+8+9+16+17+19+29

set_color color14,[69, 255, 0]
color color14, id 2+4+5+10+11+13+20

set_color color15,[255, 0, 0]
color color15, id 6+14

set_color color16,[70, 255, 0]
color color16, id 5+12+13+21+23+33+34+37+47

set_color color17,[80, 255, 0]
color color17, id 9+18+19+30+32+42+43+46+55

set_color color18,[0, 255, 0]
color color18, id 25


