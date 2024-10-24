reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 1+2+3

set_color color2,[0.0, 1.0, 0.0]
color color2, id 4+11+28

set_color color3,[0.0, 0.0, 1.0]
color color3, id 5+30+31

set_color color4,[1.0, 1.0, 0.0]
color color4, id 6+25

set_color color5,[1.0, 0.0, 1.0]
color color5, id 7+21+22+23

set_color color6,[0.0, 1.0, 1.0]
color color6, id 8+26

set_color color7,[0.99, 0.82, 0.65]
color color7, id 9+24

set_color color8,[0.65, 0.32, 0.17]
color color8, id 15+16

set_color color9,[0.2, 0.6, 0.2]
color color9, id 17+34+35+36

set_color color10,[0.1, 0.1, 0.6]
color color10, id 10+27

set_color color11,[0.72, 0.55, 0.3]
color color11, id 12

set_color color12,[0.6, 0.1, 0.6]
color color12, id 13+29

set_color color13,[0.4, 0.7, 0.7]
color color13, id 14+32+33

set_color color14,[0.85, 0.85, 1.0]
color color14, id 20+42+43+44

set_color color15,[1.0, 0.6, 0.6]
color color15, id 18+37+38

set_color color16,[0.55, 0.7, 0.4]
color color16, id 19+39+40+41


