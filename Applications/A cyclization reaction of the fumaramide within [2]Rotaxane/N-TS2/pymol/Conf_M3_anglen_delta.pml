# Max change:      -0.00351643
# Min change:      -4.04639489

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[154, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color1, (id 4), (id 5)

set_color color2,[172, 255, 0]
bond (id 4), (id 57)
set_bond stick_color, color2, (id 4), (id 57)

set_color color3,[202, 255, 0]
bond (id 4), (id 61)
set_bond stick_color, color3, (id 4), (id 61)

set_color color4,[235, 255, 0]
bond (id 5), (id 7)
set_bond stick_color, color4, (id 5), (id 7)

set_color color5,[248, 255, 0]
bond (id 5), (id 8)
set_bond stick_color, color5, (id 5), (id 8)

set_color color6,[248, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color6, (id 5), (id 6)

set_color color7,[117, 255, 0]
bond (id 3), (id 30)
set_bond stick_color, color7, (id 3), (id 30)

set_color color8,[75, 255, 0]
bond (id 30), (id 31)
set_bond stick_color, color8, (id 30), (id 31)

set_color color9,[105, 255, 0]
bond (id 30), (id 32)
set_bond stick_color, color9, (id 30), (id 32)

set_color color10,[218, 255, 0]
bond (id 3), (id 43)
set_bond stick_color, color10, (id 3), (id 43)

set_color color11,[236, 255, 0]
bond (id 43), (id 45)
set_bond stick_color, color11, (id 43), (id 45)

set_color color12,[236, 255, 0]
bond (id 43), (id 46)
set_bond stick_color, color12, (id 43), (id 46)

set_color color13,[194, 255, 0]
bond (id 57), (id 64)
set_bond stick_color, color13, (id 57), (id 64)

set_color color14,[202, 255, 0]
bond (id 19), (id 57)
set_bond stick_color, color14, (id 19), (id 57)

set_color color15,[254, 255, 0]
bond (id 57), (id 58)
set_bond stick_color, color15, (id 57), (id 58)

set_color color16,[14, 255, 0]
bond (id 59), (id 60)
set_bond stick_color, color16, (id 59), (id 60)

set_color color17,[0, 255, 0]
bond (id 59), (id 61)
set_bond stick_color, color17, (id 59), (id 61)

set_color color18,[241, 255, 0]
bond (id 2), (id 61)
set_bond stick_color, color18, (id 2), (id 61)

set_color color19,[213, 255, 0]
bond (id 59), (id 62)
set_bond stick_color, color19, (id 59), (id 62)

set_color color20,[88, 255, 0]
bond (id 62), (id 63)
set_bond stick_color, color20, (id 62), (id 63)

set_color color21,[90, 255, 0]
bond (id 62), (id 65)
set_bond stick_color, color21, (id 62), (id 65)

set_color color22,[215, 255, 0]
bond (id 1), (id 65)
set_bond stick_color, color22, (id 1), (id 65)


