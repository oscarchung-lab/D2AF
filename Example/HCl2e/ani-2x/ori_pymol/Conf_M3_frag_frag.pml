# Max Energy:       7.31939553
# Min Energy:      -3.46072349
# median Energy:    1.92933602

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 178, 0]
color color1, id 96+97+98+99+100+101+102+103+104+105+106+107+108+109+110+111+112

set_color color2,[255, 212, 0]
color color2, id 76+77+78+79+80+81

set_color color3,[255, 213, 0]
color color3, id 67+68+69+70+71+72+73+74+75+131+132+133+134+135+136+137+138

set_color color4,[255, 249, 0]
color color4, id 1+2+3+4+5+6+7+8+9+10


