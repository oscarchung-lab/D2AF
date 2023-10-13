# Max Energy:      13.96381686
# Min Energy:      -0.73402263
# median Energy:    6.61489711

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 243, 0]
bond (id 1), (id 30)
set_bond stick_color, color1, (id 1), (id 30)

set_color color2,[206, 255, 0]
bond (id 1), (id 32)
set_bond stick_color, color2, (id 1), (id 32)

set_color color3,[202, 255, 0]
bond (id 1), (id 36)
set_bond stick_color, color3, (id 1), (id 36)

set_color color4,[255, 222, 0]
bond (id 2), (id 16)
set_bond stick_color, color4, (id 2), (id 16)

set_color color5,[103, 255, 0]
bond (id 9), (id 12)
set_bond stick_color, color5, (id 9), (id 12)

set_color color6,[100, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color6, (id 12), (id 13)

set_color color7,[101, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color7, (id 12), (id 14)

set_color color8,[108, 255, 0]
bond (id 12), (id 15)
set_bond stick_color, color8, (id 12), (id 15)

set_color color9,[113, 255, 0]
bond (id 16), (id 17)
set_bond stick_color, color9, (id 16), (id 17)

set_color color10,[205, 255, 0]
bond (id 16), (id 18)
set_bond stick_color, color10, (id 16), (id 18)

set_color color11,[101, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color11, (id 18), (id 19)

set_color color12,[70, 255, 0]
bond (id 18), (id 30)
set_bond stick_color, color12, (id 18), (id 30)

set_color color13,[54, 255, 0]
bond (id 30), (id 31)
set_bond stick_color, color13, (id 30), (id 31)

set_color color14,[105, 255, 0]
bond (id 32), (id 33)
set_bond stick_color, color14, (id 32), (id 33)

set_color color15,[106, 255, 0]
bond (id 32), (id 34)
set_bond stick_color, color15, (id 32), (id 34)

set_color color16,[97, 255, 0]
bond (id 32), (id 35)
set_bond stick_color, color16, (id 32), (id 35)

set_color color17,[153, 255, 0]
bond (id 36), (id 37)
set_bond stick_color, color17, (id 36), (id 37)

set_color color18,[101, 255, 0]
bond (id 36), (id 38)
set_bond stick_color, color18, (id 36), (id 38)

set_color color19,[211, 255, 0]
bond (id 36), (id 39)
set_bond stick_color, color19, (id 36), (id 39)

set_color color20,[137, 255, 0]
bond (id 39), (id 40)
set_bond stick_color, color20, (id 39), (id 40)

set_color color21,[102, 255, 0]
bond (id 39), (id 41)
set_bond stick_color, color21, (id 39), (id 41)

set_color color22,[146, 255, 0]
bond (id 39), (id 42)
set_bond stick_color, color22, (id 39), (id 42)

set_color colorring1,[107, 255, 0]
color colorring1, id 42+43+44+45+46+47+48+49+50+51+52

set_color colorring2,[84, 255, 0]
color colorring2, id 19+20+21+22+23+24+25+26+27+28+29

set_color colorring3,[255, 0, 0]
color colorring3, id 2+3+4+5+6+7+8+9+10+11


