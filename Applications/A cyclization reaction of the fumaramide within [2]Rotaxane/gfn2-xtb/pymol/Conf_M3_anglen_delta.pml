# Max change:      -0.05000000
# Min change:      -6.60000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[36, 255, 0]
bond (id 3), (id 30)
set_bond stick_color, color1, (id 3), (id 30)

set_color color2,[183, 255, 0]
bond (id 3), (id 43)
set_bond stick_color, color2, (id 3), (id 43)

set_color color3,[216, 255, 0]
bond (id 3), (id 65)
set_bond stick_color, color3, (id 3), (id 65)

set_color color4,[233, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color4, (id 4), (id 5)

set_color color5,[198, 255, 0]
bond (id 4), (id 57)
set_bond stick_color, color5, (id 4), (id 57)

set_color color6,[220, 255, 0]
bond (id 4), (id 61)
set_bond stick_color, color6, (id 4), (id 61)

set_color color7,[247, 255, 0]
bond (id 5), (id 7)
set_bond stick_color, color7, (id 5), (id 7)

set_color color8,[251, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color8, (id 5), (id 6)

set_color color9,[0, 255, 0]
bond (id 30), (id 31)
set_bond stick_color, color9, (id 30), (id 31)

set_color color10,[25, 255, 0]
bond (id 30), (id 32)
set_bond stick_color, color10, (id 30), (id 32)

set_color color11,[253, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color11, (id 43), (id 44)

set_color color12,[237, 255, 0]
bond (id 43), (id 46)
set_bond stick_color, color12, (id 43), (id 46)

set_color color13,[245, 255, 0]
bond (id 43), (id 45)
set_bond stick_color, color13, (id 43), (id 45)

set_color color14,[229, 255, 0]
bond (id 19), (id 57)
set_bond stick_color, color14, (id 19), (id 57)

set_color color15,[237, 255, 0]
bond (id 57), (id 64)
set_bond stick_color, color15, (id 57), (id 64)

set_color color16,[137, 255, 0]
bond (id 59), (id 60)
set_bond stick_color, color16, (id 59), (id 60)

set_color color17,[106, 255, 0]
bond (id 59), (id 61)
set_bond stick_color, color17, (id 59), (id 61)

set_color color18,[231, 255, 0]
bond (id 2), (id 61)
set_bond stick_color, color18, (id 2), (id 61)

set_color color19,[229, 255, 0]
bond (id 62), (id 63)
set_bond stick_color, color19, (id 62), (id 63)

set_color color20,[156, 255, 0]
bond (id 62), (id 65)
set_bond stick_color, color20, (id 62), (id 65)

set_color color21,[181, 255, 0]
bond (id 1), (id 65)
set_bond stick_color, color21, (id 1), (id 65)


