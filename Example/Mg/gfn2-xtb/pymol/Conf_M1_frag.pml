# Max Energy:       5.13221739
# Min Energy:      -0.92690478
# median Energy:    2.10265631

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[154, 255, 0]
color color1, id 18+19+20+21

set_color color2,[154, 255, 0]
color color2, id 22+23+24+25+26

set_color color3,[255, 6, 0]
color color3, id 1+2+3+4+5

set_color color4,[255, 110, 0]
color color4, id 7+9+10+15

set_color color5,[203, 255, 0]
color color5, id 11+12+13+14+16+17

set_color color6,[255, 0, 0]
color color6, id 6

set_color color7,[0, 255, 0]
color color7, id 8


