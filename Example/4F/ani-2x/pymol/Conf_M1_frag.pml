# Max Energy:      17.45469015
# Min Energy:      -2.27601482
# median Energy:    7.58933766

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
color color1, id 1+2+3

set_color color2,[106, 255, 0]
color color2, id 8+9

set_color color3,[0, 255, 0]
color color3, id 7+10

set_color color4,[65, 255, 0]
color color4, id 11+12+13

set_color color5,[70, 255, 0]
color color5, id 14+15+16

set_color color6,[55, 255, 0]
color color6, id 4+5+6


