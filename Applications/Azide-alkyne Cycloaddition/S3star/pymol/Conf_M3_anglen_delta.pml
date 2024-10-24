# Max change:      -0.04536380
# Min change:     -21.06588695

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[234, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color1, (id 4), (id 5)

set_color color2,[240, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color2, (id 4), (id 6)

set_color color3,[242, 255, 0]
bond (id 4), (id 7)
set_bond stick_color, color3, (id 4), (id 7)

set_color color4,[0, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color4, (id 18), (id 19)

set_color color5,[133, 255, 0]
bond (id 18), (id 24)
set_bond stick_color, color5, (id 18), (id 24)

set_color color6,[106, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color6, (id 19), (id 20)

set_color color7,[248, 255, 0]
bond (id 20), (id 21)
set_bond stick_color, color7, (id 20), (id 21)

set_color color8,[253, 255, 0]
bond (id 20), (id 22)
set_bond stick_color, color8, (id 20), (id 22)

set_color color9,[247, 255, 0]
bond (id 20), (id 23)
set_bond stick_color, color9, (id 20), (id 23)

set_color color10,[254, 255, 0]
bond (id 24), (id 25)
set_bond stick_color, color10, (id 24), (id 25)

set_color color11,[249, 255, 0]
bond (id 24), (id 26)
set_bond stick_color, color11, (id 24), (id 26)

set_color color12,[254, 255, 0]
bond (id 24), (id 27)
set_bond stick_color, color12, (id 24), (id 27)

set_color color13,[33, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color13, (id 1), (id 2)

set_color color14,[33, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color14, (id 2), (id 3)


