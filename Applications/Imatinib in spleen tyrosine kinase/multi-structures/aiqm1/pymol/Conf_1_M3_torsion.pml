# Max Energy:       9.35087845
# Min Energy:      -0.43931002
# median Energy:    4.45578422

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_1.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[45, 255, 0]
bond (id 32), (id 34)
set_bond stick_color, color1, (id 32), (id 34)
set_color color2,[232, 255, 0]
bond (id 34), (id 36)
set_bond stick_color, color2, (id 34), (id 36)

