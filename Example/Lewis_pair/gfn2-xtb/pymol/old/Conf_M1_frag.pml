# Max Energy:      15.70023455
# Min Energy:      -3.51055951
# median Energy:    6.09483752

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
color color1, id 18+19

set_color color2,[243, 255, 0]
color color2, id 10+11+12+13

set_color color3,[118, 255, 0]
color color3, id 8

set_color color4,[0, 255, 0]
color color4, id 9

set_color color5,[244, 255, 0]
color color5, id 14+15+16+17

set_color color6,[255, 133, 0]
color color6, id 4

set_color color7,[255, 191, 0]
color color7, id 5+6+7

set_color color8,[255, 207, 0]
color color8, id 1+2+3


