# Max Energy:      11.33810969
# Min Energy:      -0.67041543
# median Energy:    5.33384713

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[255, 198, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)
set_color color3,[255, 127, 0]
bond (id 2), (id 3)
set_bond stick_color, color3, (id 2), (id 3)
set_color color4,[30, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color4, (id 4), (id 5)
set_color color5,[187, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color5, (id 4), (id 6)
set_color color6,[199, 255, 0]
bond (id 4), (id 14)
set_bond stick_color, color6, (id 4), (id 14)
set_color color7,[255, 142, 0]
bond (id 7), (id 8)
set_bond stick_color, color7, (id 7), (id 8)
set_color color8,[144, 255, 0]
bond (id 7), (id 10)
set_bond stick_color, color8, (id 7), (id 10)
set_color color9,[255, 234, 0]
bond (id 7), (id 11)
set_bond stick_color, color9, (id 7), (id 11)
set_color color10,[255, 77, 0]
bond (id 8), (id 9)
set_bond stick_color, color10, (id 8), (id 9)
set_color color11,[90, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color11, (id 11), (id 12)
set_color color12,[83, 255, 0]
bond (id 11), (id 13)
set_bond stick_color, color12, (id 11), (id 13)
set_color color13,[255, 236, 0]
bond (id 11), (id 14)
set_bond stick_color, color13, (id 11), (id 14)
set_color color14,[106, 255, 0]
bond (id 14), (id 15)
set_bond stick_color, color14, (id 14), (id 15)
set_color color15,[105, 255, 0]
bond (id 14), (id 16)
set_bond stick_color, color15, (id 14), (id 16)

