# Max Energy:      13.07282499
# Min Energy:      -2.10558362
# median Energy:    5.48362069

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[209, 255, 0]
color color1, id 42+43+44+45+46+47+48+49+50+51+52

set_color color2,[0, 255, 0]
color color2, id 16+17

set_color color3,[255, 0, 0]
color color3, id 2+3+4+5+6+7+8+9+10+11

set_color color4,[207, 255, 0]
color color4, id 12+13+14+15

set_color color5,[255, 245, 0]
color color5, id 18

set_color color6,[197, 255, 0]
color color6, id 19+20+21+22+23+24+25+26+27+28+29

set_color color7,[158, 255, 0]
color color7, id 30+31

set_color color8,[255, 229, 0]
color color8, id 1

set_color color9,[194, 255, 0]
color color9, id 32+33+34+35

set_color color10,[255, 218, 0]
color color10, id 36+37+38

set_color color11,[237, 255, 0]
color color11, id 39+40+41


