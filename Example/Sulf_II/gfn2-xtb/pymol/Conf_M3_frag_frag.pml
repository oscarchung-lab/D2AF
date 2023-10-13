# Max Energy:      13.07282499
# Min Energy:      -0.99970773
# median Energy:    6.03655863

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[133, 255, 0]
color color1, id 42+43+44+45+46+47+48+49+50+51+52

set_color color2,[113, 255, 0]
color color2, id 19+20+21+22+23+24+25+26+27+28+29

set_color color3,[255, 0, 0]
color color3, id 2+3+4+5+6+7+8+9+10+11


