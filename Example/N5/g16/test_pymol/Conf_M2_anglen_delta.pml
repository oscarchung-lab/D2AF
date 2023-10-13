# Max change:      -0.05000000
# Min change:      -5.65000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[239, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[128, 255, 0]
bond (id 1), (id 17)
set_bond stick_color, color2, (id 1), (id 17)

set_color color3,[230, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)

set_color color4,[81, 255, 0]
bond (id 2), (id 19)
set_bond stick_color, color4, (id 2), (id 19)

set_color color5,[230, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color5, (id 2), (id 3)

set_color color6,[160, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color6, (id 5), (id 6)

set_color color7,[194, 255, 0]
bond (id 5), (id 14)
set_bond stick_color, color7, (id 5), (id 14)

set_color color8,[216, 255, 0]
bond (id 5), (id 15)
set_bond stick_color, color8, (id 5), (id 15)

set_color color9,[173, 255, 0]
bond (id 6), (id 11)
set_bond stick_color, color9, (id 6), (id 11)

set_color color10,[94, 255, 0]
bond (id 6), (id 7)
set_bond stick_color, color10, (id 6), (id 7)

set_color color11,[81, 255, 0]
bond (id 7), (id 8)
set_bond stick_color, color11, (id 7), (id 8)

set_color color12,[128, 255, 0]
bond (id 7), (id 12)
set_bond stick_color, color12, (id 7), (id 12)

set_color color13,[171, 255, 0]
bond (id 8), (id 13)
set_bond stick_color, color13, (id 8), (id 13)

set_color color14,[200, 255, 0]
bond (id 8), (id 15)
set_bond stick_color, color14, (id 8), (id 15)

set_color color15,[252, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color15, (id 15), (id 16)

set_color color16,[209, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color16, (id 17), (id 18)

set_color color17,[47, 255, 0]
bond (id 17), (id 21)
set_bond stick_color, color17, (id 17), (id 21)

set_color color18,[151, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color18, (id 19), (id 20)

set_color color19,[0, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color19, (id 19), (id 21)

set_color color20,[76, 255, 0]
bond (id 21), (id 22)
set_bond stick_color, color20, (id 21), (id 22)


