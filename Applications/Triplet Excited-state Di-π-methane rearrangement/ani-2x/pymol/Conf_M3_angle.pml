# Max Energy:       6.66000000
# Min Energy:      -3.84000000
# median Energy:    1.41000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9,id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[162, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color1, (id 3), (id 7)
set_color color2,[255, 246, 0]
bond (id 7), (id 10)
set_bond stick_color, color2, (id 7), (id 10)
set_color color3,[255, 181, 0]
bond (id 7), (id 15)
set_bond stick_color, color3, (id 7), (id 15)
set_color color4,[255, 145, 0]
bond (id 7), (id 18)
set_bond stick_color, color4, (id 7), (id 18)
set_color color5,[167, 255, 0]
bond (id 4), (id 8)
set_bond stick_color, color5, (id 4), (id 8)
set_color color6,[255, 0, 0]
bond (id 8), (id 9)
set_bond stick_color, color6, (id 8), (id 9)
set_color color7,[255, 182, 0]
bond (id 8), (id 16)
set_bond stick_color, color7, (id 8), (id 16)
set_color color8,[255, 45, 0]
bond (id 8), (id 17)
set_bond stick_color, color8, (id 8), (id 17)
set_color color9,[113, 255, 0]
bond (id 9), (id 10)
set_bond stick_color, color9, (id 9), (id 10)
set_color color10,[184, 255, 0]
bond (id 9), (id 21)
set_bond stick_color, color10, (id 9), (id 21)
set_color color11,[247, 255, 0]
bond (id 10), (id 22)
set_bond stick_color, color11, (id 10), (id 22)
set_color color12,[255, 165, 0]
bond (id 17), (id 18)
set_bond stick_color, color12, (id 17), (id 18)
set_color color13,[255, 177, 0]
bond (id 17), (id 20)
set_bond stick_color, color13, (id 17), (id 20)
set_color color14,[255, 179, 0]
bond (id 18), (id 19)
set_bond stick_color, color14, (id 18), (id 19)

