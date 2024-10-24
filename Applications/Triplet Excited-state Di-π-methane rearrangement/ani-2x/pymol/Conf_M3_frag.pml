# Max Energy:       6.66000000
# Min Energy:      -3.84000000
# median Energy:    1.41000000

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 9,id 17

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 208, 0]
color color1, id 1+2+3+4+5+6+11+12+13+14


