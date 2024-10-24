# Max Energy:      16.14854299
# Min Energy:       0.23078717
# median Energy:    8.18966508

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
color color1, id 1+2+3

set_color color2,[215, 255, 0]
color color2, id 4+5+6+14+15+16

set_color color3,[0, 255, 0]
color color3, id 11+12+13

set_color color4,[255, 3, 0]
color color4, id 7+8+9+10


