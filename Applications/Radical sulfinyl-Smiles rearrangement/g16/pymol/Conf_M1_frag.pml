# Max Energy:      12.62031985
# Min Energy:      -0.70411517
# median Energy:    5.95810234

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[107, 255, 0]
color color1, id 42+43+44+45+46+47+48+49+50+51+52

set_color color2,[0, 255, 0]
color color2, id 16+17

set_color color3,[255, 0, 0]
color color3, id 2+3+4+5+6+7+8+9+10+11

set_color color4,[104, 255, 0]
color color4, id 12+13+14+15

set_color color5,[214, 255, 0]
color color5, id 18

set_color color6,[86, 255, 0]
color color6, id 19+20+21+22+23+24+25+26+27+28+29

set_color color7,[54, 255, 0]
color color7, id 30+31

set_color color8,[214, 255, 0]
color color8, id 1

set_color color9,[73, 255, 0]
color color9, id 32+33+34+35

set_color color10,[225, 255, 0]
color color10, id 36+37+38

set_color color11,[188, 255, 0]
color color11, id 39+40+41


