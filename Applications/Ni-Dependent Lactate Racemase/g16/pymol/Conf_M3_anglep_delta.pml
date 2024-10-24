# Max change:       7.43407933
# Min change:       0.08395636

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 224, 0]
bond (id 9), (id 10)
set_bond stick_color, color1, (id 9), (id 10)

set_color color2,[255, 225, 0]
bond (id 9), (id 12)
set_bond stick_color, color2, (id 9), (id 12)

set_color color3,[255, 239, 0]
bond (id 9), (id 61)
set_bond stick_color, color3, (id 9), (id 61)

set_color color4,[255, 244, 0]
bond (id 10), (id 40)
set_bond stick_color, color4, (id 10), (id 40)

set_color color5,[255, 188, 0]
bond (id 23), (id 24)
set_bond stick_color, color5, (id 23), (id 24)

set_color color6,[255, 188, 0]
bond (id 23), (id 57)
set_bond stick_color, color6, (id 23), (id 57)

set_color color7,[255, 238, 0]
bond (id 23), (id 26)
set_bond stick_color, color7, (id 23), (id 26)

set_color color8,[255, 251, 0]
bond (id 26), (id 28)
set_bond stick_color, color8, (id 26), (id 28)

set_color color9,[255, 218, 0]
bond (id 26), (id 31)
set_bond stick_color, color9, (id 26), (id 31)

set_color color10,[255, 248, 0]
bond (id 26), (id 43)
set_bond stick_color, color10, (id 26), (id 43)

set_color color11,[255, 252, 0]
bond (id 28), (id 44)
set_bond stick_color, color11, (id 28), (id 44)

set_color color12,[255, 246, 0]
bond (id 31), (id 32)
set_bond stick_color, color12, (id 31), (id 32)

set_color color13,[255, 235, 0]
bond (id 31), (id 45)
set_bond stick_color, color13, (id 31), (id 45)

set_color color14,[255, 240, 0]
bond (id 31), (id 34)
set_bond stick_color, color14, (id 31), (id 34)

set_color color15,[255, 243, 0]
bond (id 34), (id 47)
set_bond stick_color, color15, (id 34), (id 47)

set_color color16,[255, 228, 0]
bond (id 34), (id 35)
set_bond stick_color, color16, (id 34), (id 35)

set_color color17,[255, 238, 0]
bond (id 34), (id 63)
set_bond stick_color, color17, (id 34), (id 63)

set_color color18,[255, 27, 0]
bond (id 49), (id 50)
set_bond stick_color, color18, (id 49), (id 50)

set_color color19,[255, 0, 0]
bond (id 49), (id 51)
set_bond stick_color, color19, (id 49), (id 51)

set_color color20,[255, 52, 0]
bond (id 49), (id 58)
set_bond stick_color, color20, (id 49), (id 58)

set_color color21,[255, 206, 0]
bond (id 51), (id 53)
set_bond stick_color, color21, (id 51), (id 53)

set_color color22,[255, 239, 0]
bond (id 51), (id 52)
set_bond stick_color, color22, (id 51), (id 52)

set_color color23,[255, 233, 0]
bond (id 51), (id 54)
set_bond stick_color, color23, (id 51), (id 54)

set_color color24,[255, 176, 0]
bond (id 58), (id 59)
set_bond stick_color, color24, (id 58), (id 59)

set_color color25,[255, 161, 0]
bond (id 50), (id 55)
set_bond stick_color, color25, (id 50), (id 55)

set_color color26,[255, 161, 0]
bond (id 50), (id 56)
set_bond stick_color, color26, (id 50), (id 56)


