# Max Energy:       8.55000000
# Min Energy:      -1.83000000
# median Energy:    3.36000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[219, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[230, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)
set_color color3,[255, 187, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)
set_color color4,[255, 250, 0]
bond (id 1), (id 18)
set_bond stick_color, color4, (id 1), (id 18)
set_color color5,[218, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color5, (id 4), (id 5)
set_color color6,[222, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color6, (id 4), (id 6)
set_color color7,[255, 183, 0]
bond (id 4), (id 7)
set_bond stick_color, color7, (id 4), (id 7)
set_color color8,[247, 255, 0]
bond (id 7), (id 8)
set_bond stick_color, color8, (id 7), (id 8)
set_color color9,[255, 207, 0]
bond (id 7), (id 12)
set_bond stick_color, color9, (id 7), (id 12)
set_color color10,[234, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color10, (id 8), (id 9)
set_color color11,[217, 255, 0]
bond (id 8), (id 10)
set_bond stick_color, color11, (id 8), (id 10)
set_color color12,[217, 255, 0]
bond (id 8), (id 11)
set_bond stick_color, color12, (id 8), (id 11)
set_color color13,[217, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color13, (id 12), (id 13)
set_color color14,[214, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color14, (id 12), (id 14)
set_color color15,[255, 239, 0]
bond (id 12), (id 15)
set_bond stick_color, color15, (id 12), (id 15)
set_color color16,[215, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color16, (id 15), (id 16)
set_color color17,[218, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color17, (id 15), (id 17)
set_color color18,[241, 255, 0]
bond (id 15), (id 18)
set_bond stick_color, color18, (id 15), (id 18)
set_color color19,[255, 250, 0]
bond (id 18), (id 19)
set_bond stick_color, color19, (id 18), (id 19)
set_color color20,[221, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color20, (id 19), (id 20)
set_color color21,[220, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color21, (id 19), (id 21)
set_color color22,[224, 255, 0]
bond (id 19), (id 22)
set_bond stick_color, color22, (id 19), (id 22)
set_color color23,[255, 221, 0]
bond (id 31), (id 32)
set_bond stick_color, color23, (id 31), (id 32)
set_color color24,[255, 237, 0]
bond (id 32), (id 33)
set_bond stick_color, color24, (id 32), (id 33)
set_color color25,[255, 225, 0]
bond (id 32), (id 34)
set_bond stick_color, color25, (id 32), (id 34)
set_color color26,[214, 255, 0]
bond (id 34), (id 35)
set_bond stick_color, color26, (id 34), (id 35)
set_color color27,[230, 255, 0]
bond (id 34), (id 36)
set_bond stick_color, color27, (id 34), (id 36)
set_color color28,[220, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color28, (id 43), (id 44)
set_color color29,[219, 255, 0]
bond (id 44), (id 45)
set_bond stick_color, color29, (id 44), (id 45)
set_color color30,[218, 255, 0]
bond (id 44), (id 46)
set_bond stick_color, color30, (id 44), (id 46)
set_color color31,[219, 255, 0]
bond (id 44), (id 47)
set_bond stick_color, color31, (id 44), (id 47)
set_color color32,[231, 255, 0]
bond (id 48), (id 49)
set_bond stick_color, color32, (id 48), (id 49)
set_color color33,[237, 255, 0]
bond (id 49), (id 50)
set_bond stick_color, color33, (id 49), (id 50)
set_color color34,[224, 255, 0]
bond (id 49), (id 51)
set_bond stick_color, color34, (id 49), (id 51)

