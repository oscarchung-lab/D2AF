# Max change:      -0.02428837
# Min change:      -8.73635003

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9, id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[253, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[252, 255, 0]
bond (id 1), (id 6)
set_bond stick_color, color2, (id 1), (id 6)

set_color color3,[251, 255, 0]
bond (id 2), (id 12)
set_bond stick_color, color3, (id 2), (id 12)

set_color color4,[243, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)

set_color color5,[252, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color5, (id 3), (id 4)

set_color color6,[248, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color6, (id 3), (id 7)

set_color color7,[237, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color7, (id 4), (id 5)

set_color color8,[238, 255, 0]
bond (id 4), (id 8)
set_bond stick_color, color8, (id 4), (id 8)

set_color color9,[253, 255, 0]
bond (id 5), (id 13)
set_bond stick_color, color9, (id 5), (id 13)

set_color color10,[252, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color10, (id 5), (id 6)

set_color color11,[254, 255, 0]
bond (id 7), (id 15)
set_bond stick_color, color11, (id 7), (id 15)

set_color color12,[141, 255, 0]
bond (id 7), (id 10)
set_bond stick_color, color12, (id 7), (id 10)

set_color color13,[115, 255, 0]
bond (id 7), (id 18)
set_bond stick_color, color13, (id 7), (id 18)

set_color color14,[23, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color14, (id 8), (id 9)

set_color color15,[0, 255, 0]
bond (id 8), (id 17)
set_bond stick_color, color15, (id 8), (id 17)

set_color color16,[240, 255, 0]
bond (id 9), (id 10)
set_bond stick_color, color16, (id 9), (id 10)

set_color color17,[220, 255, 0]
bond (id 17), (id 20)
set_bond stick_color, color17, (id 17), (id 20)

set_color color18,[197, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color18, (id 17), (id 18)

set_color color19,[249, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color19, (id 18), (id 19)


