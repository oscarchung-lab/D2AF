# Max Energy:      74.34052800
# Min Energy:     -39.20385731
# median Energy:   17.56833535

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[255, 115, 0]
bond (id 1), (id 7)
set_bond stick_color, color2, (id 1), (id 7)
set_color color3,[255, 113, 0]
bond (id 1), (id 11)
set_bond stick_color, color3, (id 1), (id 11)
set_color color4,[255, 112, 0]
bond (id 3), (id 7)
set_bond stick_color, color4, (id 3), (id 7)
set_color color5,[255, 112, 0]
bond (id 4), (id 5)
set_bond stick_color, color5, (id 4), (id 5)
set_color color6,[255, 113, 0]
bond (id 4), (id 9)
set_bond stick_color, color6, (id 4), (id 9)
set_color color7,[255, 90, 0]
bond (id 4), (id 11)
set_bond stick_color, color7, (id 4), (id 11)
set_color color8,[255, 114, 0]
bond (id 6), (id 7)
set_bond stick_color, color8, (id 6), (id 7)
set_color color9,[255, 108, 0]
bond (id 6), (id 8)
set_bond stick_color, color9, (id 6), (id 8)
set_color color10,[255, 115, 0]
bond (id 6), (id 9)
set_bond stick_color, color10, (id 6), (id 9)
set_color color11,[255, 112, 0]
bond (id 9), (id 10)
set_bond stick_color, color11, (id 9), (id 10)
set_color color12,[255, 108, 0]
bond (id 12), (id 13)
set_bond stick_color, color12, (id 12), (id 13)
set_color color13,[255, 111, 0]
bond (id 12), (id 17)
set_bond stick_color, color13, (id 12), (id 17)
set_color color14,[255, 112, 0]
bond (id 13), (id 14)
set_bond stick_color, color14, (id 13), (id 14)
set_color color15,[255, 112, 0]
bond (id 13), (id 15)
set_bond stick_color, color15, (id 13), (id 15)
set_color color16,[255, 112, 0]
bond (id 13), (id 16)
set_bond stick_color, color16, (id 13), (id 16)
set_color color17,[255, 112, 0]
bond (id 17), (id 18)
set_bond stick_color, color17, (id 17), (id 18)
set_color color18,[255, 112, 0]
bond (id 17), (id 19)
set_bond stick_color, color18, (id 17), (id 19)
set_color color19,[255, 112, 0]
bond (id 17), (id 20)
set_bond stick_color, color19, (id 17), (id 20)

