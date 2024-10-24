# Max Energy:       4.97000000
# Min Energy:       0.02000000
# median Energy:    2.49500000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[0, 255, 0]
bond (id 1), (id 4)
set_bond stick_color, color1, (id 1), (id 4)
set_color color2,[255, 0, 0]
bond (id 4), (id 14)
set_bond stick_color, color2, (id 4), (id 14)
set_color color3,[252, 255, 0]
bond (id 11), (id 14)
set_bond stick_color, color3, (id 11), (id 14)
set_color color4,[255, 207, 0]
bond (id 7), (id 11)
set_bond stick_color, color4, (id 7), (id 11)

