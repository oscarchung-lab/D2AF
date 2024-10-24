# Max change:       3.87286131
# Min change:       0.00276288

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol
hide sticks, hydrogens

# Adding a representation with the appropriate colorID for each bond

set_color color1,[255, 222, 0]
bond (id 12), (id 24)
set_bond stick_color, color1, (id 12), (id 24)

set_color color2,[255, 222, 0]
bond (id 24), (id 37)
set_bond stick_color, color2, (id 24), (id 37)

set_color color3,[255, 171, 0]
bond (id 20), (id 35)
set_bond stick_color, color3, (id 20), (id 35)

set_color color4,[255, 151, 0]
bond (id 35), (id 45)
set_bond stick_color, color4, (id 35), (id 45)

set_color color5,[255, 242, 0]
bond (id 27), (id 40)
set_bond stick_color, color5, (id 27), (id 40)

set_color color6,[255, 229, 0]
bond (id 40), (id 48)
set_bond stick_color, color6, (id 40), (id 48)

set_color color7,[255, 219, 0]
bond (id 31), (id 43)
set_bond stick_color, color7, (id 31), (id 43)

set_color color8,[255, 219, 0]
bond (id 43), (id 50)
set_bond stick_color, color8, (id 43), (id 50)

set_color color9,[255, 234, 0]
bond (id 45), (id 51)
set_bond stick_color, color9, (id 45), (id 51)

set_color color10,[255, 241, 0]
bond (id 48), (id 54)
set_bond stick_color, color10, (id 48), (id 54)

set_color color11,[255, 240, 0]
bond (id 58), (id 71)
set_bond stick_color, color11, (id 58), (id 71)

set_color color12,[255, 184, 0]
bond (id 71), (id 85)
set_bond stick_color, color12, (id 71), (id 85)

set_color color13,[255, 198, 0]
bond (id 85), (id 94)
set_bond stick_color, color13, (id 85), (id 94)

set_color color14,[255, 210, 0]
bond (id 73), (id 87)
set_bond stick_color, color14, (id 73), (id 87)

set_color color15,[255, 139, 0]
bond (id 87), (id 96)
set_bond stick_color, color15, (id 87), (id 96)

set_color color16,[255, 183, 0]
bond (id 96), (id 102)
set_bond stick_color, color16, (id 96), (id 102)

set_color color17,[255, 222, 0]
bond (id 90), (id 98)
set_bond stick_color, color17, (id 90), (id 98)

set_color color18,[255, 222, 0]
bond (id 98), (id 103)
set_bond stick_color, color18, (id 98), (id 103)

set_color color19,[255, 247, 0]
bond (id 139), (id 140)
set_bond stick_color, color19, (id 139), (id 140)

set_color color20,[255, 164, 0]
bond (id 140), (id 143)
set_bond stick_color, color20, (id 140), (id 143)

set_color color21,[255, 186, 0]
bond (id 139), (id 141)
set_bond stick_color, color21, (id 139), (id 141)

set_color color22,[255, 186, 0]
bond (id 141), (id 146)
set_bond stick_color, color22, (id 141), (id 146)

set_color color23,[255, 172, 0]
bond (id 143), (id 148)
set_bond stick_color, color23, (id 143), (id 148)

set_color color24,[255, 238, 0]
bond (id 141), (id 145)
set_bond stick_color, color24, (id 141), (id 145)

set_color color25,[255, 219, 0]
bond (id 145), (id 147)
set_bond stick_color, color25, (id 145), (id 147)

set_color color26,[255, 234, 0]
bond (id 143), (id 147)
set_bond stick_color, color26, (id 143), (id 147)

set_color color27,[255, 253, 0]
bond (id 147), (id 150)
set_bond stick_color, color27, (id 147), (id 150)

set_color color28,[255, 46, 0]
bond (id 152), (id 155)
set_bond stick_color, color28, (id 152), (id 155)

set_color color29,[255, 0, 0]
bond (id 152), (id 156)
set_bond stick_color, color29, (id 152), (id 156)

set_color color30,[255, 214, 0]
bond (id 155), (id 158)
set_bond stick_color, color30, (id 155), (id 158)

set_color color31,[255, 254, 0]
bond (id 155), (id 159)
set_bond stick_color, color31, (id 155), (id 159)

set_color color32,[255, 244, 0]
bond (id 155), (id 157)
set_bond stick_color, color32, (id 155), (id 157)

set_color color33,[255, 171, 0]
bond (id 156), (id 161)
set_bond stick_color, color33, (id 156), (id 161)

set_color color34,[255, 220, 0]
bond (id 156), (id 160)
set_bond stick_color, color34, (id 156), (id 160)

set_color color35,[255, 227, 0]
bond (id 160), (id 163)
set_bond stick_color, color35, (id 160), (id 163)


