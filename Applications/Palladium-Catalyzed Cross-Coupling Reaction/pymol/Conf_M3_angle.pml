# Max Energy:      24.10533920
# Min Energy:      -2.24916339
# median Energy:   10.92808791

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 162, 0]
bond (id 12), (id 13)
set_bond stick_color, color1, (id 12), (id 13)
set_color color2,[255, 166, 0]
bond (id 12), (id 17)
set_bond stick_color, color2, (id 12), (id 17)
set_color color3,[186, 255, 0]
bond (id 13), (id 14)
set_bond stick_color, color3, (id 13), (id 14)
set_color color4,[189, 255, 0]
bond (id 13), (id 15)
set_bond stick_color, color4, (id 13), (id 15)
set_color color5,[184, 255, 0]
bond (id 13), (id 16)
set_bond stick_color, color5, (id 13), (id 16)
set_color color6,[182, 255, 0]
bond (id 17), (id 18)
set_bond stick_color, color6, (id 17), (id 18)
set_color color7,[184, 255, 0]
bond (id 17), (id 19)
set_bond stick_color, color7, (id 17), (id 19)
set_color color8,[182, 255, 0]
bond (id 17), (id 20)
set_bond stick_color, color8, (id 17), (id 20)

