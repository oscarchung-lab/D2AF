# Max Energy:       2.24000000
# Min Energy:      -1.28000000
# median Energy:    0.48000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[202, 255, 0]
bond (id 1), (id 65)
set_bond stick_color, color1, (id 1), (id 65)
set_color color2,[198, 255, 0]
bond (id 2), (id 61)
set_bond stick_color, color2, (id 2), (id 61)
set_color color3,[249, 255, 0]
bond (id 3), (id 30)
set_bond stick_color, color3, (id 3), (id 30)
set_color color4,[255, 215, 0]
bond (id 3), (id 43)
set_bond stick_color, color4, (id 3), (id 43)
set_color color5,[255, 174, 0]
bond (id 3), (id 65)
set_bond stick_color, color5, (id 3), (id 65)
set_color color6,[255, 226, 0]
bond (id 4), (id 5)
set_bond stick_color, color6, (id 4), (id 5)
set_color color7,[255, 218, 0]
bond (id 4), (id 57)
set_bond stick_color, color7, (id 4), (id 57)
set_color color8,[255, 249, 0]
bond (id 4), (id 61)
set_bond stick_color, color8, (id 4), (id 61)
set_color color9,[255, 232, 0]
bond (id 5), (id 6)
set_bond stick_color, color9, (id 5), (id 6)
set_color color10,[255, 231, 0]
bond (id 5), (id 7)
set_bond stick_color, color10, (id 5), (id 7)
set_color color11,[255, 231, 0]
bond (id 5), (id 8)
set_bond stick_color, color11, (id 5), (id 8)
set_color color12,[255, 231, 0]
bond (id 19), (id 57)
set_bond stick_color, color12, (id 19), (id 57)
set_color color13,[255, 197, 0]
bond (id 30), (id 31)
set_bond stick_color, color13, (id 30), (id 31)
set_color color14,[255, 154, 0]
bond (id 30), (id 32)
set_bond stick_color, color14, (id 30), (id 32)
set_color color15,[255, 232, 0]
bond (id 43), (id 44)
set_bond stick_color, color15, (id 43), (id 44)
set_color color16,[255, 231, 0]
bond (id 43), (id 45)
set_bond stick_color, color16, (id 43), (id 45)
set_color color17,[255, 229, 0]
bond (id 43), (id 46)
set_bond stick_color, color17, (id 43), (id 46)
set_color color18,[255, 231, 0]
bond (id 57), (id 58)
set_bond stick_color, color18, (id 57), (id 58)
set_color color19,[255, 232, 0]
bond (id 57), (id 64)
set_bond stick_color, color19, (id 57), (id 64)
set_color color20,[255, 235, 0]
bond (id 59), (id 60)
set_bond stick_color, color20, (id 59), (id 60)
set_color color21,[0, 255, 0]
bond (id 59), (id 61)
set_bond stick_color, color21, (id 59), (id 61)
set_color color22,[244, 255, 0]
bond (id 59), (id 62)
set_bond stick_color, color22, (id 59), (id 62)
set_color color23,[255, 234, 0]
bond (id 62), (id 63)
set_bond stick_color, color23, (id 62), (id 63)
set_color color24,[86, 255, 0]
bond (id 62), (id 65)
set_bond stick_color, color24, (id 62), (id 65)

