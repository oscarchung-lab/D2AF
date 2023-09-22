# Max Energy:      11.33438297
# Min Energy:      -0.67041543
# median Energy:    5.33198377

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[226, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[60, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)
set_color color3,[33, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color3, (id 2), (id 3)
set_color color4,[27, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color4, (id 4), (id 5)
set_color color5,[27, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color5, (id 4), (id 6)
set_color color6,[44, 255, 0]
bond (id 4), (id 14)
set_bond stick_color, color6, (id 4), (id 14)
set_color color7,[142, 255, 0]
bond (id 7), (id 8)
set_bond stick_color, color7, (id 7), (id 8)
set_color color8,[28, 255, 0]
bond (id 7), (id 10)
set_bond stick_color, color8, (id 7), (id 10)
set_color color9,[27, 255, 0]
bond (id 7), (id 11)
set_bond stick_color, color9, (id 7), (id 11)
set_color color10,[255, 197, 0]
bond (id 8), (id 9)
set_bond stick_color, color10, (id 8), (id 9)
set_color color11,[26, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color11, (id 11), (id 12)
set_color color12,[25, 255, 0]
bond (id 11), (id 13)
set_bond stick_color, color12, (id 11), (id 13)
set_color color13,[33, 255, 0]
bond (id 11), (id 14)
set_bond stick_color, color13, (id 11), (id 14)
set_color color14,[28, 255, 0]
bond (id 14), (id 15)
set_bond stick_color, color14, (id 14), (id 15)
set_color color15,[28, 255, 0]
bond (id 14), (id 16)
set_bond stick_color, color15, (id 14), (id 16)

