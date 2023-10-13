# Max Energy:      26.41220077
# Min Energy:      -0.08195026
# median Energy:   13.16512525

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[12, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[49, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)
set_color color3,[244, 255, 0]
bond (id 1), (id 5)
set_bond stick_color, color3, (id 1), (id 5)
set_color color4,[255, 216, 0]
bond (id 4), (id 5)
set_bond stick_color, color4, (id 4), (id 5)
set_color color5,[128, 255, 0]
bond (id 4), (id 8)
set_bond stick_color, color5, (id 4), (id 8)
set_color color6,[223, 255, 0]
bond (id 4), (id 9)
set_bond stick_color, color6, (id 4), (id 9)
set_color color7,[0, 255, 0]
bond (id 5), (id 6)
set_bond stick_color, color7, (id 5), (id 6)
set_color color8,[8, 255, 0]
bond (id 5), (id 7)
set_bond stick_color, color8, (id 5), (id 7)
set_color color9,[9, 255, 0]
bond (id 8), (id 10)
set_bond stick_color, color9, (id 8), (id 10)
set_color color10,[19, 255, 0]
bond (id 9), (id 14)
set_bond stick_color, color10, (id 9), (id 14)
set_color color11,[16, 255, 0]
bond (id 10), (id 11)
set_bond stick_color, color11, (id 10), (id 11)
set_color color12,[18, 255, 0]
bond (id 10), (id 12)
set_bond stick_color, color12, (id 10), (id 12)
set_color color13,[17, 255, 0]
bond (id 10), (id 13)
set_bond stick_color, color13, (id 10), (id 13)
set_color color14,[13, 255, 0]
bond (id 14), (id 15)
set_bond stick_color, color14, (id 14), (id 15)
set_color color15,[18, 255, 0]
bond (id 14), (id 16)
set_bond stick_color, color15, (id 14), (id 16)
set_color color16,[16, 255, 0]
bond (id 14), (id 17)
set_bond stick_color, color16, (id 14), (id 17)
set_color color17,[255, 0, 0]
bond (id 18), (id 19)
set_bond stick_color, color17, (id 18), (id 19)

