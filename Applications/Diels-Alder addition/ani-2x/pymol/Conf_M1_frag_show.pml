reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 21+22+23

set_color color2,[0.0, 1.0, 0.0]
color color2, id 7+8+12+13

set_color color3,[0.0, 0.0, 1.0]
color color3, id 15+16

set_color color4,[1.0, 1.0, 0.0]
color color4, id 6+10+11

set_color color5,[1.0, 0.0, 1.0]
color color5, id 5+9+14

set_color color6,[0.0, 1.0, 1.0]
color color6, id 1+4+17+18

set_color color7,[0.99, 0.82, 0.65]
color color7, id 2+3+19+20


