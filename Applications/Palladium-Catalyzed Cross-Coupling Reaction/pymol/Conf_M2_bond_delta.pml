# Max change:       0.31377738
# Min change:      -0.01053173

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

set_color color2,[255, 240, 0]
bond (id 1), (id 7)
set_bond stick_color, color2, (id 1), (id 7)

set_color color3,[180, 255, 0]
bond (id 1), (id 11)
set_bond stick_color, color3, (id 1), (id 11)

set_color color4,[250, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color4, (id 3), (id 7)

set_color color5,[245, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color5, (id 4), (id 5)

set_color color6,[109, 255, 0]
bond (id 4), (id 9)
set_bond stick_color, color6, (id 4), (id 9)

set_color color7,[255, 250, 0]
bond (id 4), (id 11)
set_bond stick_color, color7, (id 4), (id 11)

set_color color8,[0, 255, 0]
bond (id 6), (id 7)
set_bond stick_color, color8, (id 6), (id 7)

set_color color9,[255, 248, 0]
bond (id 6), (id 8)
set_bond stick_color, color9, (id 6), (id 8)

set_color color10,[255, 245, 0]
bond (id 6), (id 9)
set_bond stick_color, color10, (id 6), (id 9)

set_color color11,[243, 255, 0]
bond (id 9), (id 10)
set_bond stick_color, color11, (id 9), (id 10)

set_color color12,[255, 136, 0]
bond (id 12), (id 13)
set_bond stick_color, color12, (id 12), (id 13)

set_color color13,[255, 204, 0]
bond (id 12), (id 17)
set_bond stick_color, color13, (id 12), (id 17)

set_color color14,[231, 255, 0]
bond (id 13), (id 14)
set_bond stick_color, color14, (id 13), (id 14)

set_color color15,[250, 255, 0]
bond (id 13), (id 15)
set_bond stick_color, color15, (id 13), (id 15)

set_color color16,[221, 255, 0]
bond (id 13), (id 16)
set_bond stick_color, color16, (id 13), (id 16)

set_color color17,[255, 254, 0]
bond (id 17), (id 18)
set_bond stick_color, color17, (id 17), (id 18)

set_color color18,[253, 255, 0]
bond (id 17), (id 19)
set_bond stick_color, color18, (id 17), (id 19)

set_color color19,[255, 254, 0]
bond (id 17), (id 20)
set_bond stick_color, color19, (id 17), (id 20)


