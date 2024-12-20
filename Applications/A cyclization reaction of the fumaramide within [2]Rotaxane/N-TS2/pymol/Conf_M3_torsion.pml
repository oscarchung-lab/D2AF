# Max Energy:       3.36565867
# Min Energy:      -1.50882834
# median Energy:    0.92841516

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 142, 0]
bond (id 62), (id 65)
set_bond stick_color, color1, (id 62), (id 65)
set_color color2,[255, 18, 0]
bond (id 59), (id 61)
set_bond stick_color, color2, (id 59), (id 61)

