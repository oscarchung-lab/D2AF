reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 0+1+2

set_color color2,[0.0, 1.0, 0.0]
color color2, id 3+4+5+13+14+15

set_color color3,[0.0, 0.0, 1.0]
color color3, id 10+11+12

set_color color4,[1.0, 1.0, 0.0]
color color4, id 6+7+8+9


