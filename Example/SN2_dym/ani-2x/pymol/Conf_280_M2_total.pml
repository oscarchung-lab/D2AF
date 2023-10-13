# Max Energy:     288.67884387
# Min Energy:      -2.16237169
# median Energy:  143.25823609

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_280.xyz, mol 
show_as licorice, mol
color grey, mol
color green, id 6
unbond id 1, id 6

# Adding a representation with the appropriate colorID for each bond

set_color color1,[243, 255, 0]
bond (id 1), (id 2)
set_bond stick_color, color1, (id 1), (id 2)
set_color color2,[255, 172, 0]
bond (id 1), (id 3)
set_bond stick_color, color2, (id 1), (id 3)
set_color color3,[166, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color3, (id 1), (id 4)
set_color color4,[255, 17, 0]
bond (id 1), (id 5)
set_bond stick_color, color4, (id 1), (id 5)

