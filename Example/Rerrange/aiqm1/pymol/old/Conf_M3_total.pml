# Max Energy:       1.22799126
# Min Energy:      -2.73431908
# median Energy:   -0.75316391

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 178, 0]
bond (id 3), (id 7)
set_bond stick_color, color1, (id 3), (id 7)

set_color color2,[99, 255, 0]
bond (id 4), (id 8)
set_bond stick_color, color2, (id 4), (id 8)

set_color color3,[255, 71, 0]
bond (id 7), (id 10)
set_bond stick_color, color3, (id 7), (id 10)

set_color color4,[255, 127, 0]
bond (id 7), (id 15)
set_bond stick_color, color4, (id 7), (id 15)

set_color color5,[255, 58, 0]
bond (id 7), (id 18)
set_bond stick_color, color5, (id 7), (id 18)

set_color color6,[255, 106, 0]
bond (id 8), (id 9)
set_bond stick_color, color6, (id 8), (id 9)

set_color color7,[255, 169, 0]
bond (id 8), (id 16)
set_bond stick_color, color7, (id 8), (id 16)

set_color color8,[52, 255, 0]
bond (id 8), (id 17)
set_bond stick_color, color8, (id 8), (id 17)

set_color color9,[255, 0, 0]
bond (id 9), (id 10)
set_bond stick_color, color9, (id 9), (id 10)

set_color color10,[255, 68, 0]
bond (id 9), (id 21)
set_bond stick_color, color10, (id 9), (id 21)

set_color color11,[255, 63, 0]
bond (id 10), (id 22)
set_bond stick_color, color11, (id 10), (id 22)

set_color color12,[255, 1, 0]
bond (id 17), (id 18)
set_bond stick_color, color12, (id 17), (id 18)

set_color color13,[255, 82, 0]
bond (id 17), (id 20)
set_bond stick_color, color13, (id 17), (id 20)

set_color color14,[255, 88, 0]
bond (id 18), (id 19)
set_bond stick_color, color14, (id 18), (id 19)

set_color colorring1,[255, 148, 0]
color colorring1, id 1+2+3+4+5+6+11+12+13+14


