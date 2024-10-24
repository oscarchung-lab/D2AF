# Max Energy:       4.74000000
# Min Energy:      -2.39500000
# median Energy:    1.17250000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9,id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[248, 255, 0]
color color1, id 1+2+3+4+5+6+11+12+13+14


