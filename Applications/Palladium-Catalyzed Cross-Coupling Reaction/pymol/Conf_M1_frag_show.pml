reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 1+2+11

set_color color2,[0.0, 1.0, 0.0]
color color2, id 3+6+7+8

set_color color3,[0.0, 0.0, 1.0]
color color3, id 4+5+9+10

set_color color4,[1.0, 1.0, 0.0]
color color4, id 12+13+14+15+16+17+18+19+20


