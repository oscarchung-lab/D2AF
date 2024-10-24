# Max change:      -0.05000000
# Min change:      -7.65000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 2,id 20
unobond id 2,id 20

# Adding a representation with the appropriate colorID for each bond

set_color color1,[79, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)

set_color color2,[216, 255, 0]
bond (id 1), (id 19)
set_bond stick_color, color2, (id 1), (id 19)

set_color color3,[106, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color3, (id 2), (id 3)

set_color color4,[175, 255, 0]
bond (id 2), (id 7)
set_bond stick_color, color4, (id 2), (id 7)

set_color color5,[220, 255, 0]
bond (id 3), (id 5)
set_bond stick_color, color5, (id 3), (id 5)

set_color color6,[248, 255, 0]
bond (id 3), (id 6)
set_bond stick_color, color6, (id 3), (id 6)

set_color color7,[74, 255, 0]
bond (id 20), (id 24)
set_bond stick_color, color7, (id 20), (id 24)

set_color color8,[74, 255, 0]
bond (id 20), (id 63)
set_bond stick_color, color8, (id 20), (id 63)

set_color color9,[238, 255, 0]
bond (id 21), (id 35)
set_bond stick_color, color9, (id 21), (id 35)

set_color color10,[195, 255, 0]
bond (id 21), (id 55)
set_bond stick_color, color10, (id 21), (id 55)

set_color color11,[168, 255, 0]
bond (id 21), (id 64)
set_bond stick_color, color11, (id 21), (id 64)

set_color color12,[231, 255, 0]
bond (id 22), (id 43)
set_bond stick_color, color12, (id 22), (id 43)

set_color color13,[78, 255, 0]
bond (id 22), (id 51)
set_bond stick_color, color13, (id 22), (id 51)

set_color color14,[0, 255, 0]
bond (id 22), (id 64)
set_bond stick_color, color14, (id 22), (id 64)

set_color color15,[228, 255, 0]
bond (id 23), (id 59)
set_bond stick_color, color15, (id 23), (id 59)

set_color color16,[236, 255, 0]
bond (id 23), (id 61)
set_bond stick_color, color16, (id 23), (id 61)

set_color color17,[130, 255, 0]
bond (id 23), (id 64)
set_bond stick_color, color17, (id 23), (id 64)

set_color color18,[238, 255, 0]
bond (id 51), (id 53)
set_bond stick_color, color18, (id 51), (id 53)

set_color color19,[236, 255, 0]
bond (id 51), (id 54)
set_bond stick_color, color19, (id 51), (id 54)

set_color color20,[253, 255, 0]
bond (id 51), (id 52)
set_bond stick_color, color20, (id 51), (id 52)

set_color color21,[245, 255, 0]
bond (id 55), (id 56)
set_bond stick_color, color21, (id 55), (id 56)

set_color color22,[240, 255, 0]
bond (id 55), (id 57)
set_bond stick_color, color22, (id 55), (id 57)

set_color color23,[243, 255, 0]
bond (id 55), (id 58)
set_bond stick_color, color23, (id 55), (id 58)

set_color color24,[243, 255, 0]
bond (id 59), (id 60)
set_bond stick_color, color24, (id 59), (id 60)

set_color color25,[226, 255, 0]
bond (id 59), (id 73)
set_bond stick_color, color25, (id 59), (id 73)

set_color color26,[228, 255, 0]
bond (id 59), (id 77)
set_bond stick_color, color26, (id 59), (id 77)

set_color color27,[253, 255, 0]
bond (id 61), (id 62)
set_bond stick_color, color27, (id 61), (id 62)

set_color color28,[238, 255, 0]
bond (id 61), (id 69)
set_bond stick_color, color28, (id 61), (id 69)

set_color color29,[245, 255, 0]
bond (id 61), (id 65)
set_bond stick_color, color29, (id 61), (id 65)

set_color color30,[246, 255, 0]
bond (id 65), (id 68)
set_bond stick_color, color30, (id 65), (id 68)

set_color color31,[253, 255, 0]
bond (id 65), (id 66)
set_bond stick_color, color31, (id 65), (id 66)

set_color color32,[253, 255, 0]
bond (id 65), (id 67)
set_bond stick_color, color32, (id 65), (id 67)

set_color color33,[248, 255, 0]
bond (id 69), (id 70)
set_bond stick_color, color33, (id 69), (id 70)

set_color color34,[248, 255, 0]
bond (id 69), (id 72)
set_bond stick_color, color34, (id 69), (id 72)

set_color color35,[241, 255, 0]
bond (id 73), (id 75)
set_bond stick_color, color35, (id 73), (id 75)

set_color color36,[248, 255, 0]
bond (id 73), (id 76)
set_bond stick_color, color36, (id 73), (id 76)

set_color color37,[253, 255, 0]
bond (id 73), (id 74)
set_bond stick_color, color37, (id 73), (id 74)

set_color color38,[248, 255, 0]
bond (id 77), (id 78)
set_bond stick_color, color38, (id 77), (id 78)

set_color color39,[236, 255, 0]
bond (id 77), (id 79)
set_bond stick_color, color39, (id 77), (id 79)

set_color color40,[253, 255, 0]
bond (id 77), (id 80)
set_bond stick_color, color40, (id 77), (id 80)


