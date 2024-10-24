# Max Energy:      23.33344400
# Min Energy:      -3.92907566
# median Energy:    9.70218417

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf_2.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 208, 0]
color color1, id 1+2+3

set_color color2,[249, 255, 0]
color color2, id 4+11+28

set_color color3,[231, 255, 0]
color color3, id 5+30+31

set_color color4,[226, 255, 0]
color color4, id 6+25

set_color color5,[231, 255, 0]
color color5, id 7+21+22+23

set_color color6,[147, 255, 0]
color color6, id 8+26

set_color color7,[139, 255, 0]
color color7, id 9+24

set_color color8,[198, 255, 0]
color color8, id 15+16

set_color color9,[240, 255, 0]
color color9, id 17+34+35+36

set_color color10,[230, 255, 0]
color color10, id 10+27

set_color color11,[233, 255, 0]
color color11, id 12

set_color color12,[255, 252, 0]
color color12, id 13+29

set_color color13,[248, 255, 0]
color color13, id 14+32+33

set_color color14,[245, 255, 0]
color color14, id 20+42+43+44

set_color color15,[241, 255, 0]
color color15, id 18+37+38

set_color color16,[242, 255, 0]
color color16, id 19+39+40+41


