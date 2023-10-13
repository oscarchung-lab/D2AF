reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_62.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each frag

set_color color1,[1.0, 0.0, 0.0]
color color1, id 1+2

set_color color2,[0.0, 1.0, 0.0]
color color2, id 3+4+5+6

set_color color3,[0.0, 0.0, 1.0]
color color3, id 7


