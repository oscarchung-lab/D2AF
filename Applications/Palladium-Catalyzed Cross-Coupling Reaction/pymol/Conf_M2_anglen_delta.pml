# Max change:      -0.03403034
# Min change:     -35.53934041

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[218, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[228, 255, 0]
bond (id 1), (id 7)
set_bond stick_color, color2, (id 1), (id 7)

set_color color3,[235, 255, 0]
bond (id 1), (id 11)
set_bond stick_color, color3, (id 1), (id 11)

set_color color4,[251, 255, 0]
bond (id 4), (id 9)
set_bond stick_color, color4, (id 4), (id 9)

set_color color5,[251, 255, 0]
bond (id 4), (id 11)
set_bond stick_color, color5, (id 4), (id 11)

set_color color6,[252, 255, 0]
bond (id 6), (id 7)
set_bond stick_color, color6, (id 6), (id 7)

set_color color7,[251, 255, 0]
bond (id 6), (id 8)
set_bond stick_color, color7, (id 6), (id 8)

set_color color8,[251, 255, 0]
bond (id 6), (id 9)
set_bond stick_color, color8, (id 6), (id 9)

set_color color9,[254, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color9, (id 3), (id 7)

set_color color10,[254, 255, 0]
bond (id 9), (id 10)
set_bond stick_color, color10, (id 9), (id 10)

set_color color11,[0, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color11, (id 12), (id 13)

set_color color12,[7, 255, 0]
bond (id 12), (id 17)
set_bond stick_color, color12, (id 12), (id 17)

set_color color13,[247, 255, 0]
bond (id 13), (id 14)
set_bond stick_color, color13, (id 13), (id 14)

set_color color14,[250, 255, 0]
bond (id 13), (id 16)
set_bond stick_color, color14, (id 13), (id 16)

set_color color15,[254, 255, 0]
bond (id 13), (id 15)
set_bond stick_color, color15, (id 13), (id 15)

set_color color16,[249, 255, 0]
bond (id 17), (id 19)
set_bond stick_color, color16, (id 17), (id 19)

set_color color17,[254, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color17, (id 17), (id 18)

set_color color18,[254, 255, 0]
bond (id 17), (id 20)
set_bond stick_color, color18, (id 17), (id 20)


