# Max Energy:       9.89059644
# Min Energy:      -1.20779215
# median Energy:    4.34140214

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
color grey, mol
set_bond line_width, 30, mol
as lines, all   

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
bond (id 1), (id 2) 
set_bond line_color, color1, (id 1), (id 2)
set_color color2,[117, 255, 0]
bond (id 1), (id 4)
set_bond line_color, color2, (id 1), (id 4)
set_color color3,[255, 231, 0]
bond (id 2), (id 3)
set_bond line_color, color3, (id 2), (id 3)
set_color color4,[18, 255, 0]
bond (id 4), (id 5)
set_bond line_color, color4, (id 4), (id 5)
set_color color5,[116, 255, 0]
bond (id 4), (id 6)
set_bond line_color, color5, (id 4), (id 6)
set_color color6,[7, 255, 0]
bond (id 4), (id 14)
set_bond line_color, color6, (id 4), (id 14)
set_color color7,[255, 203, 0]
bond (id 7), (id 8)
set_bond line_color, color7, (id 7), (id 8)
set_color color8,[93, 255, 0]
bond (id 7), (id 10)
set_bond line_color, color8, (id 7), (id 10)
set_color color9,[194, 255, 0]
bond (id 7), (id 11)
set_bond line_color, color9, (id 7), (id 11)
set_color color10,[255, 156, 0]
bond (id 8), (id 9)
set_bond line_color, color10, (id 8), (id 9)
set_color color11,[53, 255, 0]
bond (id 11), (id 12)
set_bond line_color, color11, (id 11), (id 12)
set_color color12,[47, 255, 0]
bond (id 11), (id 13)
set_bond line_color, color12, (id 11), (id 13)
set_color color13,[94, 255, 0]
bond (id 11), (id 14)
set_bond line_color, color13, (id 11), (id 14)
set_color color14,[56, 255, 0]
bond (id 14), (id 15)
set_bond line_color, color14, (id 14), (id 15)
set_color color15,[52, 255, 0]
bond (id 14), (id 16)
set_bond line_color, color15, (id 14), (id 16)
ray