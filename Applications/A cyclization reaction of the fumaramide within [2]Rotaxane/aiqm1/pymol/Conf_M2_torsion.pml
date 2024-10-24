# Max Energy:       2.24000000
# Min Energy:      -1.28000000
# median Energy:    0.48000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, -100, 0]
bond (id 62), (id 65)
set_bond stick_color, color1, (id 62), (id 65)
set_color color2,[255, -103, 0]
bond (id 59), (id 61)
set_bond stick_color, color2, (id 59), (id 61)

