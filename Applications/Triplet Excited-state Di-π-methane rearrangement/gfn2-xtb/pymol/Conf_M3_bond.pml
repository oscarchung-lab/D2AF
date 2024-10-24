# Max Energy:       4.74000000
# Min Energy:      -2.39500000
# median Energy:    1.17250000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9,id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 214, 0]
bond (id 3), (id 7)
set_bond stick_color, color1, (id 3), (id 7)
set_color color2,[255, 217, 0]
bond (id 4), (id 8)
set_bond stick_color, color2, (id 4), (id 8)
set_color color3,[255, 220, 0]
bond (id 7), (id 10)
set_bond stick_color, color3, (id 7), (id 10)
set_color color4,[255, 212, 0]
bond (id 7), (id 15)
set_bond stick_color, color4, (id 7), (id 15)
set_color color5,[255, 212, 0]
bond (id 7), (id 18)
set_bond stick_color, color5, (id 7), (id 18)
set_color color6,[255, 232, 0]
bond (id 8), (id 9)
set_bond stick_color, color6, (id 8), (id 9)
set_color color7,[255, 214, 0]
bond (id 8), (id 16)
set_bond stick_color, color7, (id 8), (id 16)
set_color color8,[255, 205, 0]
bond (id 8), (id 17)
set_bond stick_color, color8, (id 8), (id 17)
set_color color9,[255, 224, 0]
bond (id 9), (id 10)
set_bond stick_color, color9, (id 9), (id 10)
set_color color10,[255, 219, 0]
bond (id 9), (id 21)
set_bond stick_color, color10, (id 9), (id 21)
set_color color11,[255, 216, 0]
bond (id 10), (id 22)
set_bond stick_color, color11, (id 10), (id 22)
set_color color12,[255, 115, 0]
bond (id 17), (id 18)
set_bond stick_color, color12, (id 17), (id 18)
set_color color13,[255, 212, 0]
bond (id 17), (id 20)
set_bond stick_color, color13, (id 17), (id 20)
set_color color14,[255, 211, 0]
bond (id 18), (id 19)
set_bond stick_color, color14, (id 18), (id 19)

