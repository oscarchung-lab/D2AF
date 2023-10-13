# Max Energy:       5.46446788
# Min Energy:      -0.60417854
# median Energy:    2.43014467

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9, id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[108, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[121, 255, 0]
bond (id 1), (id 6)
set_bond stick_color, color2, (id 1), (id 6)
set_color color3,[122, 255, 0]
bond (id 1), (id 11)
set_bond stick_color, color3, (id 1), (id 11)
set_color color4,[93, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)
set_color color5,[122, 255, 0]
bond (id 2), (id 12)
set_bond stick_color, color5, (id 2), (id 12)
set_color color6,[6, 255, 0]
bond (id 3), (id 4)
set_bond stick_color, color6, (id 3), (id 4)
set_color color7,[0, 255, 0]
bond (id 3), (id 7)
set_bond stick_color, color7, (id 3), (id 7)
set_color color8,[43, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color8, (id 4), (id 5)
set_color color9,[18, 255, 0]
bond (id 4), (id 8)
set_bond stick_color, color9, (id 4), (id 8)
set_color color10,[100, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color10, (id 5), (id 6)
set_color color11,[122, 255, 0]
bond (id 5), (id 13)
set_bond stick_color, color11, (id 5), (id 13)
set_color color12,[123, 255, 0]
bond (id 6), (id 14)
set_bond stick_color, color12, (id 6), (id 14)
set_color color13,[239, 255, 0]
bond (id 7), (id 10)
set_bond stick_color, color13, (id 7), (id 10)
set_color color14,[123, 255, 0]
bond (id 7), (id 15)
set_bond stick_color, color14, (id 7), (id 15)
set_color color15,[255, 188, 0]
bond (id 7), (id 18)
set_bond stick_color, color15, (id 7), (id 18)
set_color color16,[255, 14, 0]
bond (id 8), (id 9)
set_bond stick_color, color16, (id 8), (id 9)
set_color color17,[119, 255, 0]
bond (id 8), (id 16)
set_bond stick_color, color17, (id 8), (id 16)
set_color color18,[255, 0, 0]
bond (id 8), (id 17)
set_bond stick_color, color18, (id 8), (id 17)
set_color color19,[120, 255, 0]
bond (id 9), (id 10)
set_bond stick_color, color19, (id 9), (id 10)
set_color color20,[135, 255, 0]
bond (id 9), (id 21)
set_bond stick_color, color20, (id 9), (id 21)
set_color color21,[120, 255, 0]
bond (id 10), (id 22)
set_bond stick_color, color21, (id 10), (id 22)
set_color color22,[255, 173, 0]
bond (id 17), (id 18)
set_bond stick_color, color22, (id 17), (id 18)
set_color color23,[126, 255, 0]
bond (id 17), (id 20)
set_bond stick_color, color23, (id 17), (id 20)
set_color color24,[136, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color24, (id 18), (id 19)

