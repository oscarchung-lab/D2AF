# Max Energy:      10.35343062
# Min Energy:      -0.00633841
# median Energy:    5.17354610

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[175, 255, 0]
color color1, id 21+22+23

set_color color2,[255, 0, 0]
color color2, id 7+8+12+13

set_color color3,[56, 255, 0]
color color3, id 15+16

set_color color4,[0, 255, 0]
color color4, id 6+10+11

set_color color5,[10, 255, 0]
color color5, id 5+9+14

set_color color6,[255, 80, 0]
color color6, id 1+4+17+18

set_color color7,[255, 26, 0]
color color7, id 2+3+19+20


