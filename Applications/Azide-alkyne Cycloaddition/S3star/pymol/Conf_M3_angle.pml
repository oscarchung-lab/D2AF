# Max Energy:      10.69210838
# Min Energy:      -0.68497589
# median Energy:    5.00356624

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[102, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color1, (id 1), (id 4)
set_color color2,[122, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color2, (id 4), (id 5)
set_color color3,[116, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color3, (id 4), (id 6)
set_color color4,[114, 255, 0]
bond (id 4), (id 7)
set_bond stick_color, color4, (id 4), (id 7)
set_color color5,[255, 165, 0]
bond (id 18), (id 19)
set_bond stick_color, color5, (id 18), (id 19)
set_color color6,[174, 255, 0]
bond (id 18), (id 24)
set_bond stick_color, color6, (id 18), (id 24)
set_color color7,[213, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color7, (id 19), (id 20)
set_color color8,[49, 255, 0]
bond (id 20), (id 21)
set_bond stick_color, color8, (id 20), (id 21)
set_color color9,[78, 255, 0]
bond (id 20), (id 22)
set_bond stick_color, color9, (id 20), (id 22)
set_color color10,[39, 255, 0]
bond (id 20), (id 23)
set_bond stick_color, color10, (id 20), (id 23)
set_color color11,[91, 255, 0]
bond (id 24), (id 25)
set_bond stick_color, color11, (id 24), (id 25)
set_color color12,[0, 255, 0]
bond (id 24), (id 26)
set_bond stick_color, color12, (id 24), (id 26)
set_color color13,[95, 255, 0]
bond (id 24), (id 27)
set_bond stick_color, color13, (id 24), (id 27)
set_color color14,[255, 21, 0]
bond (id 1), (id 2)
set_bond stick_color, color14, (id 1), (id 2)
set_color color15,[255, 21, 0]
bond (id 2), (id 3)
set_bond stick_color, color15, (id 2), (id 3)

