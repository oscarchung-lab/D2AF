# Max change:      -0.05000000
# Min change:      -5.95000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[225, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[0, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[89, 255, 0]
bond (id 1), (id 18)
set_bond stick_color, color3, (id 1), (id 18)

set_color color4,[220, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color4, (id 1), (id 3)

set_color color5,[47, 255, 0]
bond (id 4), (id 7)
set_bond stick_color, color5, (id 4), (id 7)

set_color color6,[167, 255, 0]
bond (id 7), (id 8)
set_bond stick_color, color6, (id 7), (id 8)

set_color color7,[205, 255, 0]
bond (id 8), (id 10)
set_bond stick_color, color7, (id 8), (id 10)

set_color color8,[216, 255, 0]
bond (id 8), (id 11)
set_bond stick_color, color8, (id 8), (id 11)

set_color color9,[92, 255, 0]
bond (id 7), (id 12)
set_bond stick_color, color9, (id 7), (id 12)

set_color color10,[70, 255, 0]
bond (id 12), (id 15)
set_bond stick_color, color10, (id 12), (id 15)

set_color color11,[225, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color11, (id 15), (id 17)

set_color color12,[235, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color12, (id 15), (id 16)

set_color color13,[192, 255, 0]
bond (id 15), (id 18)
set_bond stick_color, color13, (id 15), (id 18)

set_color color14,[74, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color14, (id 18), (id 19)

set_color color15,[216, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color15, (id 19), (id 20)

set_color color16,[220, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color16, (id 19), (id 21)

set_color color17,[252, 255, 0]
bond (id 19), (id 22)
set_bond stick_color, color17, (id 19), (id 22)

set_color color18,[179, 255, 0]
bond (id 31), (id 32)
set_bond stick_color, color18, (id 31), (id 32)

set_color color19,[128, 255, 0]
bond (id 32), (id 33)
set_bond stick_color, color19, (id 32), (id 33)

set_color color20,[194, 255, 0]
bond (id 32), (id 34)
set_bond stick_color, color20, (id 32), (id 34)

set_color color21,[246, 255, 0]
bond (id 34), (id 35)
set_bond stick_color, color21, (id 34), (id 35)

set_color color22,[244, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color22, (id 43), (id 44)

set_color color23,[225, 255, 0]
bond (id 44), (id 45)
set_bond stick_color, color23, (id 44), (id 45)

set_color color24,[235, 255, 0]
bond (id 44), (id 46)
set_bond stick_color, color24, (id 44), (id 46)

set_color color25,[240, 255, 0]
bond (id 49), (id 50)
set_bond stick_color, color25, (id 49), (id 50)

set_color color26,[240, 255, 0]
bond (id 49), (id 51)
set_bond stick_color, color26, (id 49), (id 51)


