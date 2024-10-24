# Max change:       0.44268180
# Min change:      -0.09929932

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 33,id 48

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 254, 0]
bond (id 9), (id 10)
set_bond stick_color, color1, (id 9), (id 10)

set_color color2,[255, 254, 0]
bond (id 9), (id 11)
set_bond stick_color, color2, (id 9), (id 11)

set_color color3,[255, 254, 0]
bond (id 9), (id 12)
set_bond stick_color, color3, (id 9), (id 12)

set_color color4,[255, 254, 0]
bond (id 9), (id 61)
set_bond stick_color, color4, (id 9), (id 61)

set_color color5,[255, 237, 0]
bond (id 10), (id 38)
set_bond stick_color, color5, (id 10), (id 38)

set_color color6,[155, 255, 0]
bond (id 10), (id 40)
set_bond stick_color, color6, (id 10), (id 40)

set_color color7,[204, 255, 0]
bond (id 23), (id 24)
set_bond stick_color, color7, (id 23), (id 24)

set_color color8,[255, 250, 0]
bond (id 23), (id 26)
set_bond stick_color, color8, (id 23), (id 26)

set_color color9,[255, 245, 0]
bond (id 23), (id 35)
set_bond stick_color, color9, (id 23), (id 35)

set_color color10,[250, 255, 0]
bond (id 23), (id 57)
set_bond stick_color, color10, (id 23), (id 57)

set_color color11,[255, 254, 0]
bond (id 26), (id 28)
set_bond stick_color, color11, (id 26), (id 28)

set_color color12,[255, 250, 0]
bond (id 26), (id 31)
set_bond stick_color, color12, (id 26), (id 31)

set_color color13,[253, 255, 0]
bond (id 26), (id 43)
set_bond stick_color, color13, (id 26), (id 43)

set_color color14,[254, 255, 0]
bond (id 28), (id 44)
set_bond stick_color, color14, (id 28), (id 44)

set_color color15,[248, 255, 0]
bond (id 31), (id 32)
set_bond stick_color, color15, (id 31), (id 32)

set_color color16,[255, 254, 0]
bond (id 31), (id 34)
set_bond stick_color, color16, (id 31), (id 34)

set_color color17,[254, 255, 0]
bond (id 31), (id 45)
set_bond stick_color, color17, (id 31), (id 45)

set_color color18,[255, 254, 0]
bond (id 32), (id 46)
set_bond stick_color, color18, (id 32), (id 46)

set_color color19,[232, 255, 0]
bond (id 34), (id 35)
set_bond stick_color, color19, (id 34), (id 35)

set_color color20,[254, 255, 0]
bond (id 34), (id 47)
set_bond stick_color, color20, (id 34), (id 47)

set_color color21,[255, 253, 0]
bond (id 34), (id 63)
set_bond stick_color, color21, (id 34), (id 63)

set_color color22,[255, 0, 0]
bond (id 48), (id 49)
set_bond stick_color, color22, (id 48), (id 49)

set_color color23,[255, 252, 0]
bond (id 49), (id 50)
set_bond stick_color, color23, (id 49), (id 50)

set_color color24,[159, 255, 0]
bond (id 49), (id 51)
set_bond stick_color, color24, (id 49), (id 51)

set_color color25,[0, 255, 0]
bond (id 49), (id 58)
set_bond stick_color, color25, (id 49), (id 58)

set_color color26,[244, 255, 0]
bond (id 50), (id 55)
set_bond stick_color, color26, (id 50), (id 55)

set_color color27,[197, 255, 0]
bond (id 50), (id 56)
set_bond stick_color, color27, (id 50), (id 56)

set_color color28,[255, 254, 0]
bond (id 51), (id 52)
set_bond stick_color, color28, (id 51), (id 52)

set_color color29,[253, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color29, (id 51), (id 53)

set_color color30,[254, 255, 0]
bond (id 51), (id 54)
set_bond stick_color, color30, (id 51), (id 54)

set_color color31,[255, 240, 0]
bond (id 58), (id 59)
set_bond stick_color, color31, (id 58), (id 59)


