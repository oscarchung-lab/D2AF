# Max Energy:      40.98468657
# Min Energy:      -1.33003524
# median Energy:   19.82732566

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 158, 0]
color color1, id 13+14+15+16+17+18+19+20+21+22+24+25+27+29+30+33+36+37+38+39+41+42+60

set_color color2,[115, 255, 0]
color color2, id 1+2+3+4+5+6+7+8+62


