# Max Energy:       7.31325016
# Min Energy:      -3.25690115
# median Energy:    2.02817451

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9, id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 239, 0]
color color1, id 1+2+3+4+5+6+11+12+13+14


