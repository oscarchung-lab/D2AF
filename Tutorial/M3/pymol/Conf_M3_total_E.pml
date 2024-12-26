# Max Energy:      17.56390142
# Min Energy:      -0.16421068
# median Energy:    8.69984537

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[119, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color1, (id 1), (id 4)

set_color color2,[40, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color2, (id 4), (id 5)

set_color color3,[37, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color3, (id 4), (id 6)

set_color color4,[255, 159, 0]
bond (id 4), (id 14)
set_bond stick_color, color4, (id 4), (id 14)

set_color color5,[255, 180, 0]
bond (id 7), (id 8)
set_bond stick_color, color5, (id 7), (id 8)

set_color color6,[119, 255, 0]
bond (id 7), (id 10)
set_bond stick_color, color6, (id 7), (id 10)

set_color color7,[249, 255, 0]
bond (id 7), (id 11)
set_bond stick_color, color7, (id 7), (id 11)

set_color color8,[255, 156, 0]
bond (id 8), (id 9)
set_bond stick_color, color8, (id 8), (id 9)

set_color color9,[20, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color9, (id 11), (id 12)

set_color color10,[0, 255, 0]
bond (id 11), (id 13)
set_bond stick_color, color10, (id 11), (id 13)

set_color color11,[121, 255, 0]
bond (id 11), (id 14)
set_bond stick_color, color11, (id 11), (id 14)

set_color color12,[30, 255, 0]
bond (id 14), (id 15)
set_bond stick_color, color12, (id 14), (id 15)

set_color color13,[17, 255, 0]
bond (id 14), (id 16)
set_bond stick_color, color13, (id 14), (id 16)

set_color colorring1,[255, 0, 0]
color colorring1, id 1+2+3


