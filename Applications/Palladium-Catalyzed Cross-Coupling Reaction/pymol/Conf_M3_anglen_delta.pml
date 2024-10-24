# Max change:      -0.03403034
# Min change:     -35.53934041

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[0, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color1, (id 12), (id 13)

set_color color2,[7, 255, 0]
bond (id 12), (id 17)
set_bond stick_color, color2, (id 12), (id 17)

set_color color3,[247, 255, 0]
bond (id 13), (id 14)
set_bond stick_color, color3, (id 13), (id 14)

set_color color4,[250, 255, 0]
bond (id 13), (id 16)
set_bond stick_color, color4, (id 13), (id 16)

set_color color5,[254, 255, 0]
bond (id 13), (id 15)
set_bond stick_color, color5, (id 13), (id 15)

set_color color6,[249, 255, 0]
bond (id 17), (id 19)
set_bond stick_color, color6, (id 17), (id 19)

set_color color7,[254, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color7, (id 17), (id 18)

set_color color8,[254, 255, 0]
bond (id 17), (id 20)
set_bond stick_color, color8, (id 17), (id 20)


