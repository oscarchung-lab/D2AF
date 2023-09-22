# Max Energy:      35.15345533
# Min Energy:      -1.62247103
# median Energy:   16.76549215

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 2, id 20
bond id 20, id 63

# Adding a representation with the appropriate colorID for each bond

set_color color1,[156, 255, 0]
color color1, id 35+36+37+38+39+40+41+42+85+86+87+88+93+94+95+96

set_color color2,[132, 255, 0]
color color2, id 43+44+45+46+47+48+49+50+81+82+83+84+89+90+91+92

set_color color3,[177, 255, 0]
color color3, id 8+9+10+11+12+13+14+15+16+17+18

set_color color4,[111, 255, 0]
color color4, id 24+25+26+27+28+29+30+31+32+33+34


