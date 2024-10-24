# Max Energy:      10.06695091
# Min Energy:      -0.43905460
# median Energy:    4.81394816

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 104, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[75, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)
set_color color3,[239, 255, 0]
bond (id 1), (id 17)
set_bond stick_color, color3, (id 1), (id 17)
set_color color4,[73, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)
set_color color5,[255, 234, 0]
bond (id 2), (id 19)
set_bond stick_color, color5, (id 2), (id 19)
set_color color6,[72, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color6, (id 17), (id 18)
set_color color7,[70, 255, 0]
bond (id 17), (id 21)
set_bond stick_color, color7, (id 17), (id 21)
set_color color8,[69, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color8, (id 19), (id 20)
set_color color9,[50, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color9, (id 19), (id 21)
set_color color10,[78, 255, 0]
bond (id 21), (id 22)
set_bond stick_color, color10, (id 21), (id 22)
set_color color11,[71, 255, 0]
bond (id 21), (id 23)
set_bond stick_color, color11, (id 21), (id 23)

