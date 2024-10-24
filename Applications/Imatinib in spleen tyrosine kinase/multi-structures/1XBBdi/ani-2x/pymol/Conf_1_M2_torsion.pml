# Max Energy:      31.77726220
# Min Energy:     -38.11471948
# median Energy:   -3.16872864

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_1.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 72, 0]
bond (id 32), (id 34)
set_bond stick_color, color1, (id 32), (id 34)

