# Max Energy:       9.89059644
# Min Energy:      -1.20779215
# median Energy:    4.34140214

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 162, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[186, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color2, (id 1), (id 4)
set_color color3,[165, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color3, (id 2), (id 3)
set_color color4,[161, 255, 0]
bond (id 4), (id 5)
set_bond stick_color, color4, (id 4), (id 5)
set_color color5,[161, 255, 0]
bond (id 4), (id 6)
set_bond stick_color, color5, (id 4), (id 6)
set_color color6,[177, 255, 0]
bond (id 4), (id 14)
set_bond stick_color, color6, (id 4), (id 14)
set_color color7,[255, 182, 0]
bond (id 7), (id 8)
set_bond stick_color, color7, (id 7), (id 8)
set_color color8,[161, 255, 0]
bond (id 7), (id 10)
set_bond stick_color, color8, (id 7), (id 10)
set_color color9,[170, 255, 0]
bond (id 7), (id 11)
set_bond stick_color, color9, (id 7), (id 11)
set_color color10,[255, 72, 0]
bond (id 8), (id 9)
set_bond stick_color, color10, (id 8), (id 9)
set_color color11,[161, 255, 0]
bond (id 11), (id 12)
set_bond stick_color, color11, (id 11), (id 12)
set_color color12,[159, 255, 0]
bond (id 11), (id 13)
set_bond stick_color, color12, (id 11), (id 13)
set_color color13,[160, 255, 0]
bond (id 11), (id 14)
set_bond stick_color, color13, (id 11), (id 14)
set_color color14,[162, 255, 0]
bond (id 14), (id 15)
set_bond stick_color, color14, (id 14), (id 15)
set_color color15,[162, 255, 0]
bond (id 14), (id 16)
set_bond stick_color, color15, (id 14), (id 16)

