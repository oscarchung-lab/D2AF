# Max Energy:       3.36565867
# Min Energy:      -1.50882834
# median Energy:    0.92841516

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[101, 255, 0]
bond (id 3), (id 30)
set_bond stick_color, color1, (id 3), (id 30)
set_color color2,[255, 231, 0]
bond (id 3), (id 43)
set_bond stick_color, color2, (id 3), (id 43)
set_color color3,[0, 255, 0]
bond (id 3), (id 65)
set_bond stick_color, color3, (id 3), (id 65)
set_color color4,[255, 197, 0]
bond (id 4), (id 5)
set_bond stick_color, color4, (id 4), (id 5)
set_color color5,[255, 219, 0]
bond (id 4), (id 57)
set_bond stick_color, color5, (id 4), (id 57)
set_color color6,[255, 233, 0]
bond (id 4), (id 61)
set_bond stick_color, color6, (id 4), (id 61)
set_color color7,[255, 248, 0]
bond (id 5), (id 6)
set_bond stick_color, color7, (id 5), (id 6)
set_color color8,[255, 240, 0]
bond (id 5), (id 7)
set_bond stick_color, color8, (id 5), (id 7)
set_color color9,[255, 244, 0]
bond (id 5), (id 8)
set_bond stick_color, color9, (id 5), (id 8)
set_color color10,[255, 205, 0]
bond (id 30), (id 31)
set_bond stick_color, color10, (id 30), (id 31)
set_color color11,[255, 212, 0]
bond (id 30), (id 32)
set_bond stick_color, color11, (id 30), (id 32)
set_color color12,[255, 248, 0]
bond (id 43), (id 44)
set_bond stick_color, color12, (id 43), (id 44)
set_color color13,[255, 242, 0]
bond (id 43), (id 45)
set_bond stick_color, color13, (id 43), (id 45)
set_color color14,[255, 240, 0]
bond (id 43), (id 46)
set_bond stick_color, color14, (id 43), (id 46)
set_color color15,[255, 244, 0]
bond (id 19), (id 57)
set_bond stick_color, color15, (id 19), (id 57)
set_color color16,[255, 251, 0]
bond (id 57), (id 58)
set_bond stick_color, color16, (id 57), (id 58)
set_color color17,[255, 243, 0]
bond (id 57), (id 64)
set_bond stick_color, color17, (id 57), (id 64)
set_color color18,[255, 219, 0]
bond (id 59), (id 60)
set_bond stick_color, color18, (id 59), (id 60)
set_color color19,[255, 177, 0]
bond (id 59), (id 61)
set_bond stick_color, color19, (id 59), (id 61)
set_color color20,[255, 208, 0]
bond (id 59), (id 62)
set_bond stick_color, color20, (id 59), (id 62)
set_color color21,[255, 253, 0]
bond (id 2), (id 61)
set_bond stick_color, color21, (id 2), (id 61)
set_color color22,[255, 223, 0]
bond (id 62), (id 63)
set_bond stick_color, color22, (id 62), (id 63)
set_color color23,[215, 255, 0]
bond (id 62), (id 65)
set_bond stick_color, color23, (id 62), (id 65)
set_color color24,[251, 255, 0]
bond (id 1), (id 65)
set_bond stick_color, color24, (id 1), (id 65)
