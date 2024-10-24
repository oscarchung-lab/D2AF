# Max change:       0.55812249
# Min change:      -0.03818547

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 1, id 52

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 254, 0]
bond (id 2), (id 4)
set_bond stick_color, color1, (id 2), (id 4)

set_color color2,[255, 254, 0]
bond (id 2), (id 5)
set_bond stick_color, color2, (id 2), (id 5)

set_color color3,[159, 255, 0]
bond (id 3), (id 9)
set_bond stick_color, color3, (id 3), (id 9)

set_color color4,[190, 255, 0]
bond (id 3), (id 10)
set_bond stick_color, color4, (id 3), (id 10)

set_color color5,[255, 254, 0]
bond (id 4), (id 11)
set_bond stick_color, color5, (id 4), (id 11)

set_color color6,[255, 252, 0]
bond (id 5), (id 12)
set_bond stick_color, color6, (id 5), (id 12)

set_color color7,[255, 253, 0]
bond (id 6), (id 13)
set_bond stick_color, color7, (id 6), (id 13)

set_color color8,[201, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color8, (id 6), (id 14)

set_color color9,[255, 253, 0]
bond (id 9), (id 19)
set_bond stick_color, color9, (id 9), (id 19)

set_color color10,[255, 253, 0]
bond (id 10), (id 20)
set_bond stick_color, color10, (id 10), (id 20)

set_color color11,[235, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color11, (id 11), (id 12)

set_color color12,[226, 255, 0]
bond (id 11), (id 21)
set_bond stick_color, color12, (id 11), (id 21)

set_color color13,[255, 254, 0]
bond (id 11), (id 22)
set_bond stick_color, color13, (id 11), (id 22)

set_color color14,[245, 255, 0]
bond (id 12), (id 23)
set_bond stick_color, color14, (id 12), (id 23)

set_color color15,[255, 254, 0]
bond (id 12), (id 24)
set_bond stick_color, color15, (id 12), (id 24)

set_color color16,[255, 252, 0]
bond (id 13), (id 25)
set_bond stick_color, color16, (id 13), (id 25)

set_color color17,[255, 254, 0]
bond (id 14), (id 26)
set_bond stick_color, color17, (id 14), (id 26)

set_color color18,[236, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color18, (id 15), (id 17)

set_color color19,[245, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color19, (id 19), (id 20)

set_color color20,[249, 255, 0]
bond (id 19), (id 33)
set_bond stick_color, color20, (id 19), (id 33)

set_color color21,[248, 255, 0]
bond (id 19), (id 34)
set_bond stick_color, color21, (id 19), (id 34)

set_color color22,[231, 255, 0]
bond (id 20), (id 35)
set_bond stick_color, color22, (id 20), (id 35)

set_color color23,[255, 254, 0]
bond (id 20), (id 36)
set_bond stick_color, color23, (id 20), (id 36)

set_color color24,[240, 255, 0]
bond (id 25), (id 26)
set_bond stick_color, color24, (id 25), (id 26)

set_color color25,[238, 255, 0]
bond (id 25), (id 37)
set_bond stick_color, color25, (id 25), (id 37)

set_color color26,[255, 254, 0]
bond (id 25), (id 38)
set_bond stick_color, color26, (id 25), (id 38)

set_color color27,[250, 255, 0]
bond (id 26), (id 39)
set_bond stick_color, color27, (id 26), (id 39)

set_color color28,[247, 255, 0]
bond (id 26), (id 40)
set_bond stick_color, color28, (id 26), (id 40)

set_color color29,[255, 247, 0]
bond (id 49), (id 50)
set_bond stick_color, color29, (id 49), (id 50)

set_color color30,[255, 251, 0]
bond (id 49), (id 51)
set_bond stick_color, color30, (id 49), (id 51)

set_color color31,[255, 0, 0]
bond (id 49), (id 52)
set_bond stick_color, color31, (id 49), (id 52)

set_color color32,[229, 255, 0]
bond (id 50), (id 53)
set_bond stick_color, color32, (id 50), (id 53)

set_color color33,[255, 254, 0]
bond (id 50), (id 54)
set_bond stick_color, color33, (id 50), (id 54)

set_color color34,[213, 255, 0]
bond (id 51), (id 55)
set_bond stick_color, color34, (id 51), (id 55)

set_color color35,[255, 252, 0]
bond (id 51), (id 56)
set_bond stick_color, color35, (id 51), (id 56)

set_color color36,[0, 255, 0]
bond (id 1), (id 7)
set_bond stick_color, color36, (id 1), (id 7)

set_color color37,[207, 255, 0]
bond (id 1), (id 8)
set_bond stick_color, color37, (id 1), (id 8)

set_color color38,[255, 247, 0]
bond (id 1), (id 2)
set_bond stick_color, color38, (id 1), (id 2)

set_color color39,[255, 239, 0]
bond (id 1), (id 3)
set_bond stick_color, color39, (id 1), (id 3)

set_color color40,[255, 192, 0]
bond (id 1), (id 6)
set_bond stick_color, color40, (id 1), (id 6)


