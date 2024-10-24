# Max Energy:       4.67000000
# Min Energy:      -0.81000000
# median Energy:    1.93000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 36, 0]
bond (id 62), (id 65)
set_bond stick_color, color1, (id 62), (id 65)
set_color color2,[255, -2, 0]
bond (id 59), (id 61)
set_bond stick_color, color2, (id 59), (id 61)

