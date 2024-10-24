reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_194.xyz, mol 
show_as licorice, mol
color grey, mol
color green, id 6
unbond id 1, id 6

# Adding a representation with the appropriate colorID for each bond


