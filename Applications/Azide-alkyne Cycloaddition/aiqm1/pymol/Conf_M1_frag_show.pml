reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 26+27+28+29+30+31+32+33+34+35+36

set_color color2,[0.0, 1.0, 0.0]
color color2, id 23+24+25

set_color color3,[0.0, 0.0, 1.0]
color color3, id 20+21+22

set_color color4,[1.0, 1.0, 0.0]
color color4, id 18+19

set_color color5,[1.0, 0.0, 1.0]
color color5, id 4+13+14

set_color color6,[0.0, 1.0, 1.0]
color color6, id 3+9+12

set_color color7,[0.99, 0.82, 0.65]
color color7, id 2+8+11

set_color color8,[0.65, 0.32, 0.17]
color color8, id 1+7+10

set_color color9,[0.2, 0.6, 0.2]
color color9, id 5+15+16

set_color color10,[0.1, 0.1, 0.6]
color color10, id 6+17

set_color color11,[0.72, 0.55, 0.3]
color color11, id 37

set_color color12,[0.6, 0.1, 0.6]
color color12, id 38+39+40+41


