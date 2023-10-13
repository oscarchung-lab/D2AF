# Max Energy:      15.30107018
# Min Energy:      -0.54537151
# median Energy:    7.37784933

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[80, 255, 0]
color color1, id 26+27+28+29+30+31+32+33+34+35+36

set_color color2,[17, 255, 0]
color color2, id 23+24+25

set_color color3,[255, 0, 0]
color color3, id 20+21+22

set_color color4,[255, 173, 0]
color color4, id 18+19

set_color color5,[0, 255, 0]
color color5, id 4+13+14

set_color color6,[67, 255, 0]
color color6, id 3+9+12

set_color color7,[51, 255, 0]
color color7, id 2+8+11

set_color color8,[55, 255, 0]
color color8, id 1+7+10

set_color color9,[69, 255, 0]
color color9, id 5+15+16

set_color color10,[55, 255, 0]
color color10, id 6+17

set_color color11,[106, 255, 0]
color color11, id 37

set_color color12,[85, 255, 0]
color color12, id 38+39+40+41


