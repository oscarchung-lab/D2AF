# Max Energy:       4.67000000
# Min Energy:      -0.81000000
# median Energy:    1.93000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[80, 255, 0]
bond (id 1), (id 65)
set_bond stick_color, color1, (id 1), (id 65)

set_color color2,[21, 255, 0]
bond (id 2), (id 61)
set_bond stick_color, color2, (id 2), (id 61)

set_color color3,[195, 255, 0]
bond (id 3), (id 30)
set_bond stick_color, color3, (id 3), (id 30)

set_color color4,[213, 255, 0]
bond (id 3), (id 43)
set_bond stick_color, color4, (id 3), (id 43)

set_color color5,[21, 255, 0]
bond (id 3), (id 65)
set_bond stick_color, color5, (id 3), (id 65)

set_color color6,[191, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color6, (id 4), (id 5)

set_color color7,[199, 255, 0]
bond (id 4), (id 57)
set_bond stick_color, color7, (id 4), (id 57)

set_color color8,[99, 255, 0]
bond (id 4), (id 61)
set_bond stick_color, color8, (id 4), (id 61)

set_color color9,[157, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color9, (id 5), (id 6)

set_color color10,[164, 255, 0]
bond (id 5), (id 7)
set_bond stick_color, color10, (id 5), (id 7)

set_color color11,[158, 255, 0]
bond (id 5), (id 8)
set_bond stick_color, color11, (id 5), (id 8)

set_color color12,[178, 255, 0]
bond (id 19), (id 57)
set_bond stick_color, color12, (id 19), (id 57)

set_color color13,[255, 195, 0]
bond (id 30), (id 31)
set_bond stick_color, color13, (id 30), (id 31)

set_color color14,[255, 176, 0]
bond (id 30), (id 32)
set_bond stick_color, color14, (id 30), (id 32)

set_color color15,[162, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color15, (id 43), (id 44)

set_color color16,[163, 255, 0]
bond (id 43), (id 45)
set_bond stick_color, color16, (id 43), (id 45)

set_color color17,[165, 255, 0]
bond (id 43), (id 46)
set_bond stick_color, color17, (id 43), (id 46)

set_color color18,[149, 255, 0]
bond (id 57), (id 58)
set_bond stick_color, color18, (id 57), (id 58)

set_color color19,[156, 255, 0]
bond (id 57), (id 64)
set_bond stick_color, color19, (id 57), (id 64)

set_color color20,[175, 255, 0]
bond (id 59), (id 60)
set_bond stick_color, color20, (id 59), (id 60)

set_color color21,[255, 0, 0]
bond (id 59), (id 61)
set_bond stick_color, color21, (id 59), (id 61)

set_color color22,[123, 255, 0]
bond (id 59), (id 62)
set_bond stick_color, color22, (id 59), (id 62)

set_color color23,[164, 255, 0]
bond (id 62), (id 63)
set_bond stick_color, color23, (id 62), (id 63)

set_color color24,[255, 36, 0]
bond (id 62), (id 65)
set_bond stick_color, color24, (id 62), (id 65)

set_color colorring1,[164, 255, 0]
color colorring1, id 46+47+48+49+50+51+52+53+54+55+56

set_color colorring2,[85, 255, 0]
color colorring2, id 32+33+34+35+36+37+38+39+40+41+42

set_color colorring3,[160, 255, 0]
color colorring3, id 19+20+21+22+23+24+25+26+27+28+29

set_color colorring4,[155, 255, 0]
color colorring4, id 8+9+10+11+12+13+14+15+16+17+18


