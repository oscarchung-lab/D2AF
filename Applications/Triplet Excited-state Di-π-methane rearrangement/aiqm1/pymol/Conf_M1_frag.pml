# Max Energy:      10.84300234
# Min Energy:      -0.61863442
# median Energy:    5.11218396

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9, id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 57, 0]
color color1, id 8+16

set_color color2,[255, 0, 0]
color color2, id 9+21

set_color color3,[255, 11, 0]
color color3, id 10+22

set_color color4,[113, 255, 0]
color color4, id 7+15

set_color color5,[255, 236, 0]
color color5, id 17+18+19+20

set_color color6,[0, 255, 0]
color color6, id 1+2+3+4+5+6+11+12+13+14


