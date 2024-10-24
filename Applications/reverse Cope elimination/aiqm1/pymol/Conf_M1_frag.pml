# Max Energy:      18.69000000
# Min Energy:      -2.33000000
# median Energy:    8.18000000

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

set_color color2,[255, 227, 0]
color color2, id 8+9

set_color color3,[0, 255, 0]
color color3, id 7+10

set_color color4,[208, 255, 0]
color color4, id 11+12+13

set_color color5,[223, 255, 0]
color color5, id 14+15+16

set_color color6,[199, 255, 0]
color color6, id 4+5+6


