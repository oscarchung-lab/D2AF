# Max Energy:       3.78348369
# Min Energy:      -0.59369254
# median Energy:    1.59489557

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 7,id 14

# Adding a representation with the appropriate colorID for each bond

set_color color1,[66, 255, 0]
color color1, id 3+8+9+16+17+19+29

set_color color2,[91, 255, 0]
color color2, id 9+18+19+30+32+42+43+46+55

set_color color3,[54, 255, 0]
color color3, id 2+4+5+10+11+13+20

set_color color4,[56, 255, 0]
color color4, id 5+12+13+21+23+33+34+37+47


