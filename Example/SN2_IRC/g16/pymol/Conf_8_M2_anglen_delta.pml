reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_8.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 2, id 3

# Adding a representation with the appropriate colorID for each bond


