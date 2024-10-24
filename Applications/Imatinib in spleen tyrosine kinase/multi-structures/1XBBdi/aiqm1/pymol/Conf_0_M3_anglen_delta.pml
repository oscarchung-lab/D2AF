# Max change:      -0.00870104
# Min change:      -4.16079758

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_0.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[231, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[0, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)

set_color color3,[235, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color3, (id 1), (id 3)

set_color color4,[166, 255, 0]
bond (id 1), (id 18)
set_bond stick_color, color4, (id 1), (id 18)

set_color color5,[92, 255, 0]
bond (id 4), (id 7)
set_bond stick_color, color5, (id 4), (id 7)

set_color color6,[225, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color6, (id 8), (id 9)

set_color color7,[207, 255, 0]
bond (id 8), (id 10)
set_bond stick_color, color7, (id 8), (id 10)

set_color color8,[207, 255, 0]
bond (id 8), (id 11)
set_bond stick_color, color8, (id 8), (id 11)

set_color color9,[114, 255, 0]
bond (id 7), (id 12)
set_bond stick_color, color9, (id 7), (id 12)

set_color color10,[49, 255, 0]
bond (id 12), (id 15)
set_bond stick_color, color10, (id 12), (id 15)

set_color color11,[242, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color11, (id 15), (id 17)

set_color color12,[174, 255, 0]
bond (id 15), (id 18)
set_bond stick_color, color12, (id 15), (id 18)

set_color color13,[226, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color13, (id 15), (id 16)

set_color color14,[181, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color14, (id 18), (id 19)

set_color color15,[123, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color15, (id 19), (id 20)

set_color color16,[226, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color16, (id 19), (id 21)

set_color color17,[225, 255, 0]
bond (id 19), (id 22)
set_bond stick_color, color17, (id 19), (id 22)

set_color color18,[136, 255, 0]
bond (id 31), (id 32)
set_bond stick_color, color18, (id 31), (id 32)

set_color color19,[72, 255, 0]
bond (id 32), (id 33)
set_bond stick_color, color19, (id 32), (id 33)

set_color color20,[167, 255, 0]
bond (id 32), (id 34)
set_bond stick_color, color20, (id 32), (id 34)

set_color color21,[207, 255, 0]
bond (id 34), (id 35)
set_bond stick_color, color21, (id 34), (id 35)

set_color color22,[231, 255, 0]
bond (id 34), (id 36)
set_bond stick_color, color22, (id 34), (id 36)

set_color color23,[254, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color23, (id 43), (id 44)

set_color color24,[246, 255, 0]
bond (id 44), (id 45)
set_bond stick_color, color24, (id 44), (id 45)

set_color color25,[245, 255, 0]
bond (id 44), (id 46)
set_bond stick_color, color25, (id 44), (id 46)

set_color color26,[249, 255, 0]
bond (id 44), (id 47)
set_bond stick_color, color26, (id 44), (id 47)


