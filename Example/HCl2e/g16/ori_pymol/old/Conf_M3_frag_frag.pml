# Max Energy:       6.56889108
# Min Energy:      -0.86512545
# median Energy:    2.85188282

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[198, 255, 0]
color color1, id 96+97+98+99+100+101+102+103+104+105+106+107+108+109+110+111+112

set_color color2,[86, 255, 0]
color color2, id 76+77+78+79+80+81

set_color color3,[116, 255, 0]
color color3, id 67+68+69+70+71+72+73+74+75+131+132+133+134+135+136+137+138

set_color color4,[0, 255, 0]
color color4, id 1+2+3+4+5+6+7+8+9+10


