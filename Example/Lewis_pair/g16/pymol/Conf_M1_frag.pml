# Max Energy:      26.40924121
# Min Energy:      -4.05521648
# median Energy:   11.17701237

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
bond id 18, id 19
unbond id 1, id 19
unbond id 4, id 18

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
color color1, id 18+19

set_color color2,[228, 255, 0]
color color2, id 10+11+12+13

set_color color3,[113, 255, 0]
color color3, id 8

set_color color4,[0, 255, 0]
color color4, id 9

set_color color5,[229, 255, 0]
color color5, id 14+15+16+17

set_color color6,[255, 145, 0]
color color6, id 4

set_color color7,[255, 218, 0]
color color7, id 5+6+7

set_color color8,[255, 234, 0]
color color8, id 1+2+3


