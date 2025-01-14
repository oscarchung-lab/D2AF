# Max Energy:       6.35500000
# Min Energy:      -0.84500000
# median Energy:    2.75500000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[152, 255, 0]
color color1, id 46+47+48+49+50+51+52+53+54+55+56

set_color color2,[70, 255, 0]
color color2, id 32+33+34+35+36+37+38+39+40+41+42

set_color color3,[147, 255, 0]
color color3, id 19+20+21+22+23+24+25+26+27+28+29

set_color color4,[144, 255, 0]
color color4, id 8+9+10+11+12+13+14+15+16+17+18


