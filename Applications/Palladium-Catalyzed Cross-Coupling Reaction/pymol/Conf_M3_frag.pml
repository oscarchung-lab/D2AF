# Max Energy:      24.10533920
# Min Energy:      -2.24916339
# median Energy:   10.92808791

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 0, 0]
color color1, id 1+2+11

set_color color2,[0, 255, 0]
color color2, id 3+6+7+8

set_color color3,[110, 255, 0]
color color3, id 4+5+9+10


