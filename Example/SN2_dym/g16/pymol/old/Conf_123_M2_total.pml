# Max Energy:     235.33874278
# Min Energy:      -0.01577485
# median Energy:  117.66148397

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_123.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[220, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[158, 255, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)
set_color color3,[174, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)
set_color color4,[255, 246, 0]
bond (id 1), (id 5)
set_bond stick_color, color4, (id 1), (id 5)

