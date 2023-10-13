# Max Energy:       8.07856920
# Min Energy:      -1.40734335
# median Energy:    3.33561293

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9, id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[185, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[187, 255, 0]
bond (id 1), (id 6)
set_bond stick_color, color2, (id 1), (id 6)
set_color color3,[190, 255, 0]
bond (id 1), (id 11)
set_bond stick_color, color3, (id 1), (id 11)
set_color color4,[184, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)
set_color color5,[190, 255, 0]
bond (id 2), (id 12)
set_bond stick_color, color5, (id 2), (id 12)
set_color color6,[182, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color6, (id 3), (id 4)
set_color color7,[192, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color7, (id 3), (id 7)
set_color color8,[174, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color8, (id 4), (id 5)
set_color color9,[196, 255, 0]
bond (id 4), (id 8)
set_bond stick_color, color9, (id 4), (id 8)
set_color color10,[181, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color10, (id 5), (id 6)
set_color color11,[190, 255, 0]
bond (id 5), (id 13)
set_bond stick_color, color11, (id 5), (id 13)
set_color color12,[190, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color12, (id 6), (id 14)
set_color color13,[188, 255, 0]
bond (id 7), (id 10)
set_bond stick_color, color13, (id 7), (id 10)
set_color color14,[190, 255, 0]
bond (id 7), (id 15)
set_bond stick_color, color14, (id 7), (id 15)
set_color color15,[195, 255, 0]
bond (id 7), (id 18)
set_bond stick_color, color15, (id 7), (id 18)
set_color color16,[190, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color16, (id 8), (id 9)
set_color color17,[190, 255, 0]
bond (id 8), (id 16)
set_bond stick_color, color17, (id 8), (id 16)
set_color color18,[215, 255, 0]
bond (id 8), (id 17)
set_bond stick_color, color18, (id 8), (id 17)
set_color color19,[197, 255, 0]
bond (id 9), (id 10)
set_bond stick_color, color19, (id 9), (id 10)
set_color color20,[189, 255, 0]
bond (id 9), (id 21)
set_bond stick_color, color20, (id 9), (id 21)
set_color color21,[190, 255, 0]
bond (id 10), (id 22)
set_bond stick_color, color21, (id 10), (id 22)
set_color color22,[247, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color22, (id 17), (id 18)
set_color color23,[191, 255, 0]
bond (id 17), (id 20)
set_bond stick_color, color23, (id 17), (id 20)
set_color color24,[193, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color24, (id 18), (id 19)

