# Max Energy:       5.54309465
# Min Energy:      -0.79565081
# median Energy:    2.37372192

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 7,id 14

# Adding a representation with the appropriate colorID for each bond

set_color color1,[135, 255, 0]
color color1, id 2+4+5+10+11+12+13+20+21+23+33+34+37+47

set_color color2,[171, 255, 0]
color color2, id 3+8+9+16+17+18+19+29+30+32+42+43+46+55


