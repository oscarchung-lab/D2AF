# Max Energy:       9.84000000
# Min Energy:      -1.46500000
# median Energy:    4.18750000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[185, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[196, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)
set_color color3,[255, 199, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)
set_color color4,[235, 255, 0]
bond (id 1), (id 18)
set_bond stick_color, color4, (id 1), (id 18)
set_color color5,[181, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color5, (id 4), (id 5)
set_color color6,[177, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color6, (id 4), (id 6)
set_color color7,[255, 201, 0]
bond (id 4), (id 7)
set_bond stick_color, color7, (id 4), (id 7)
set_color color8,[202, 255, 0]
bond (id 7), (id 8)
set_bond stick_color, color8, (id 7), (id 8)
set_color color9,[255, 228, 0]
bond (id 7), (id 12)
set_bond stick_color, color9, (id 7), (id 12)
set_color color10,[190, 255, 0]
bond (id 8), (id 9)
set_bond stick_color, color10, (id 8), (id 9)
set_color color11,[184, 255, 0]
bond (id 8), (id 10)
set_bond stick_color, color11, (id 8), (id 10)
set_color color12,[183, 255, 0]
bond (id 8), (id 11)
set_bond stick_color, color12, (id 8), (id 11)
set_color color13,[180, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color13, (id 12), (id 13)
set_color color14,[170, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color14, (id 12), (id 14)
set_color color15,[255, 252, 0]
bond (id 12), (id 15)
set_bond stick_color, color15, (id 12), (id 15)
set_color color16,[178, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color16, (id 15), (id 16)
set_color color17,[186, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color17, (id 15), (id 17)
set_color color18,[209, 255, 0]
bond (id 15), (id 18)
set_bond stick_color, color18, (id 15), (id 18)
set_color color19,[234, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color19, (id 18), (id 19)
set_color color20,[189, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color20, (id 19), (id 20)
set_color color21,[187, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color21, (id 19), (id 21)
set_color color22,[182, 255, 0]
bond (id 19), (id 22)
set_bond stick_color, color22, (id 19), (id 22)
set_color color23,[255, 234, 0]
bond (id 31), (id 32)
set_bond stick_color, color23, (id 31), (id 32)
set_color color24,[255, 253, 0]
bond (id 32), (id 33)
set_bond stick_color, color24, (id 32), (id 33)
set_color color25,[255, 233, 0]
bond (id 32), (id 34)
set_bond stick_color, color25, (id 32), (id 34)
set_color color26,[177, 255, 0]
bond (id 34), (id 35)
set_bond stick_color, color26, (id 34), (id 35)
set_color color27,[204, 255, 0]
bond (id 34), (id 36)
set_bond stick_color, color27, (id 34), (id 36)
set_color color28,[184, 255, 0]
bond (id 43), (id 44)
set_bond stick_color, color28, (id 43), (id 44)
set_color color29,[186, 255, 0]
bond (id 44), (id 45)
set_bond stick_color, color29, (id 44), (id 45)
set_color color30,[184, 255, 0]
bond (id 44), (id 46)
set_bond stick_color, color30, (id 44), (id 46)
set_color color31,[183, 255, 0]
bond (id 44), (id 47)
set_bond stick_color, color31, (id 44), (id 47)
set_color color32,[195, 255, 0]
bond (id 48), (id 49)
set_bond stick_color, color32, (id 48), (id 49)
set_color color33,[204, 255, 0]
bond (id 49), (id 50)
set_bond stick_color, color33, (id 49), (id 50)
set_color color34,[192, 255, 0]
bond (id 49), (id 51)
set_bond stick_color, color34, (id 49), (id 51)

