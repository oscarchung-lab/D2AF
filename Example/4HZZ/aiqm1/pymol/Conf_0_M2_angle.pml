# Max Energy:      19.69519953
# Min Energy:      -1.61025045
# median Energy:    9.04247454

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_0.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[197, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[197, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)
set_color color3,[232, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)
set_color color4,[222, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color4, (id 4), (id 5)
set_color color5,[212, 255, 0]
bond (id 4), (id 11)
set_bond stick_color, color5, (id 4), (id 11)
set_color color6,[255, 230, 0]
bond (id 5), (id 6)
set_bond stick_color, color6, (id 5), (id 6)
set_color color7,[162, 255, 0]
bond (id 5), (id 30)
set_bond stick_color, color7, (id 5), (id 30)
set_color color8,[158, 255, 0]
bond (id 5), (id 31)
set_bond stick_color, color8, (id 5), (id 31)
set_color color9,[255, 251, 0]
bond (id 6), (id 7)
set_bond stick_color, color9, (id 6), (id 7)
set_color color10,[255, 155, 0]
bond (id 6), (id 8)
set_bond stick_color, color10, (id 6), (id 8)
set_color color11,[255, 194, 0]
bond (id 6), (id 25)
set_bond stick_color, color11, (id 6), (id 25)
set_color color12,[148, 255, 0]
bond (id 7), (id 21)
set_bond stick_color, color12, (id 7), (id 21)
set_color color13,[151, 255, 0]
bond (id 7), (id 22)
set_bond stick_color, color13, (id 7), (id 22)
set_color color14,[154, 255, 0]
bond (id 7), (id 23)
set_bond stick_color, color14, (id 7), (id 23)
set_color color15,[255, 219, 0]
bond (id 8), (id 9)
set_bond stick_color, color15, (id 8), (id 9)
set_color color16,[255, 115, 0]
bond (id 8), (id 10)
set_bond stick_color, color16, (id 8), (id 10)
set_color color17,[255, 162, 0]
bond (id 8), (id 26)
set_bond stick_color, color17, (id 8), (id 26)
set_color color18,[113, 255, 0]
bond (id 9), (id 15)
set_bond stick_color, color18, (id 9), (id 15)
set_color color19,[165, 255, 0]
bond (id 9), (id 24)
set_bond stick_color, color19, (id 9), (id 24)
set_color color20,[255, 208, 0]
bond (id 10), (id 11)
set_bond stick_color, color20, (id 10), (id 11)
set_color color21,[255, 189, 0]
bond (id 10), (id 12)
set_bond stick_color, color21, (id 10), (id 12)
set_color color22,[255, 176, 0]
bond (id 10), (id 27)
set_bond stick_color, color22, (id 10), (id 27)
set_color color23,[209, 255, 0]
bond (id 11), (id 28)
set_bond stick_color, color23, (id 11), (id 28)
set_color color24,[184, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color24, (id 12), (id 13)
set_color color25,[188, 255, 0]
bond (id 13), (id 14)
set_bond stick_color, color25, (id 13), (id 14)
set_color color26,[189, 255, 0]
bond (id 13), (id 18)
set_bond stick_color, color26, (id 13), (id 18)
set_color color27,[185, 255, 0]
bond (id 13), (id 29)
set_bond stick_color, color27, (id 13), (id 29)
set_color color28,[166, 255, 0]
bond (id 14), (id 20)
set_bond stick_color, color28, (id 14), (id 20)
set_color color29,[161, 255, 0]
bond (id 14), (id 32)
set_bond stick_color, color29, (id 14), (id 32)
set_color color30,[161, 255, 0]
bond (id 14), (id 33)
set_bond stick_color, color30, (id 14), (id 33)
set_color color31,[172, 255, 0]
bond (id 15), (id 16)
set_bond stick_color, color31, (id 15), (id 16)
set_color color32,[159, 255, 0]
bond (id 15), (id 17)
set_bond stick_color, color32, (id 15), (id 17)
set_color color33,[156, 255, 0]
bond (id 17), (id 34)
set_bond stick_color, color33, (id 17), (id 34)
set_color color34,[159, 255, 0]
bond (id 17), (id 35)
set_bond stick_color, color34, (id 17), (id 35)
set_color color35,[159, 255, 0]
bond (id 17), (id 36)
set_bond stick_color, color35, (id 17), (id 36)
set_color color36,[163, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color36, (id 18), (id 19)
set_color color37,[161, 255, 0]
bond (id 18), (id 37)
set_bond stick_color, color37, (id 18), (id 37)
set_color color38,[160, 255, 0]
bond (id 18), (id 38)
set_bond stick_color, color38, (id 18), (id 38)
set_color color39,[155, 255, 0]
bond (id 19), (id 39)
set_bond stick_color, color39, (id 19), (id 39)
set_color color40,[158, 255, 0]
bond (id 19), (id 40)
set_bond stick_color, color40, (id 19), (id 40)
set_color color41,[157, 255, 0]
bond (id 19), (id 41)
set_bond stick_color, color41, (id 19), (id 41)
set_color color42,[158, 255, 0]
bond (id 20), (id 42)
set_bond stick_color, color42, (id 20), (id 42)
set_color color43,[159, 255, 0]
bond (id 20), (id 43)
set_bond stick_color, color43, (id 20), (id 43)
set_color color44,[158, 255, 0]
bond (id 20), (id 44)
set_bond stick_color, color44, (id 20), (id 44)

