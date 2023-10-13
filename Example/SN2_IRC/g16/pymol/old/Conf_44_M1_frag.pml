# Max Energy:      65.43475974
# Min Energy:       0.00077127
# median Energy:   32.71776551

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_44.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[2, 255, 0]
color color1, id 1+2

set_color color2,[212, 255, 0]
color color2, id 3+4+5+6

set_color color3,[214, 255, 0]
color color3, id 7


