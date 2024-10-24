# Max change:      -0.00830096
# Min change:      -4.74919729

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 47,id 74

# Adding a representation with the appropriate colorID for each bond

set_color color1,[131, 255, 0]
bond (id 47), (id 48)
set_bond stick_color, color1, (id 47), (id 48)

set_color color2,[159, 255, 0]
bond (id 47), (id 58)
set_bond stick_color, color2, (id 47), (id 58)

set_color color3,[203, 255, 0]
bond (id 48), (id 49)
set_bond stick_color, color3, (id 48), (id 49)

set_color color4,[231, 255, 0]
bond (id 50), (id 51)
set_bond stick_color, color4, (id 50), (id 51)

set_color color5,[247, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color5, (id 51), (id 52)

set_color color6,[242, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color6, (id 51), (id 53)

set_color color7,[246, 255, 0]
bond (id 51), (id 54)
set_bond stick_color, color7, (id 51), (id 54)

set_color color8,[253, 255, 0]
bond (id 54), (id 55)
set_bond stick_color, color8, (id 54), (id 55)

set_color color9,[250, 255, 0]
bond (id 54), (id 57)
set_bond stick_color, color9, (id 54), (id 57)

set_color color10,[234, 255, 0]
bond (id 58), (id 60)
set_bond stick_color, color10, (id 58), (id 60)

set_color color11,[210, 255, 0]
bond (id 58), (id 61)
set_bond stick_color, color11, (id 58), (id 61)

set_color color12,[238, 255, 0]
bond (id 58), (id 59)
set_bond stick_color, color12, (id 58), (id 59)

set_color color13,[169, 255, 0]
bond (id 63), (id 73)
set_bond stick_color, color13, (id 63), (id 73)

set_color color14,[0, 255, 0]
bond (id 73), (id 75)
set_bond stick_color, color14, (id 73), (id 75)

set_color color15,[123, 255, 0]
bond (id 73), (id 79)
set_bond stick_color, color15, (id 73), (id 79)

set_color color16,[154, 255, 0]
bond (id 73), (id 74)
set_bond stick_color, color16, (id 73), (id 74)

set_color color17,[226, 255, 0]
bond (id 75), (id 77)
set_bond stick_color, color17, (id 75), (id 77)

set_color color18,[237, 255, 0]
bond (id 75), (id 78)
set_bond stick_color, color18, (id 75), (id 78)

set_color color19,[250, 255, 0]
bond (id 75), (id 76)
set_bond stick_color, color19, (id 75), (id 76)

set_color color20,[176, 255, 0]
bond (id 79), (id 80)
set_bond stick_color, color20, (id 79), (id 80)

set_color color21,[237, 255, 0]
bond (id 79), (id 81)
set_bond stick_color, color21, (id 79), (id 81)

set_color color22,[250, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color22, (id 3), (id 7)

set_color color23,[249, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color23, (id 3), (id 9)

set_color color24,[248, 255, 0]
bond (id 4), (id 10)
set_bond stick_color, color24, (id 4), (id 10)

set_color color25,[248, 255, 0]
bond (id 4), (id 12)
set_bond stick_color, color25, (id 4), (id 12)

set_color color26,[254, 255, 0]
bond (id 9), (id 33)
set_bond stick_color, color26, (id 9), (id 33)


