# Max Energy:       6.24990924
# Min Energy:      -0.84728189
# median Energy:    2.70131368

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
unbond id 47,id 74

# Adding a representation with the appropriate colorID for each bond

set_color color1,[175, 255, 0]
color color1, id 62+63+64+65+66+67+68+69+70+71+72

set_color color2,[96, 255, 0]
color color2, id 11+31+35

set_color color3,[116, 255, 0]
color color3, id 6+30+34

set_color color4,[150, 255, 0]
color color4, id 19+21+27+29

set_color color5,[151, 255, 0]
color color5, id 18+20+26+28

set_color color6,[159, 255, 0]
color color6, id 14+16+22+24

set_color color7,[154, 255, 0]
color color7, id 15+17+23+25

set_color color8,[147, 255, 0]
color color8, id 38+39+40+41+42+43+44+45+46


