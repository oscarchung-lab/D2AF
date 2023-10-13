# Max change:      -0.00178432
# Min change:      -8.12604214

reinitialize 
bg_color white 
set fog, 1 
# Load a molecule
load Conf.xyz, mol 
show_as licorice, mol
color grey, mol

# Adding a representation with the appropriate colorID for each bond

set_color color1,[24, 255, 0]
bond (id 1), (id 30)
set_bond stick_color, color1, (id 1), (id 30)

set_color color2,[0, 255, 0]
bond (id 1), (id 32)
set_bond stick_color, color2, (id 1), (id 32)

set_color color3,[175, 255, 0]
bond (id 1), (id 36)
set_bond stick_color, color3, (id 1), (id 36)

set_color color4,[116, 255, 0]
bond (id 2), (id 3)
set_bond stick_color, color4, (id 2), (id 3)

set_color color5,[95, 255, 0]
bond (id 2), (id 4)
set_bond stick_color, color5, (id 2), (id 4)

set_color color6,[12, 255, 0]
bond (id 2), (id 16)
set_bond stick_color, color6, (id 2), (id 16)

set_color color7,[230, 255, 0]
bond (id 3), (id 6)
set_bond stick_color, color7, (id 3), (id 6)

set_color color8,[231, 255, 0]
bond (id 3), (id 5)
set_bond stick_color, color8, (id 3), (id 5)

set_color color9,[231, 255, 0]
bond (id 4), (id 8)
set_bond stick_color, color9, (id 4), (id 8)

set_color color10,[243, 255, 0]
bond (id 4), (id 7)
set_bond stick_color, color10, (id 4), (id 7)

set_color color11,[246, 255, 0]
bond (id 5), (id 10)
set_bond stick_color, color11, (id 5), (id 10)

set_color color12,[239, 255, 0]
bond (id 5), (id 9)
set_bond stick_color, color12, (id 5), (id 9)

set_color color13,[246, 255, 0]
bond (id 7), (id 11)
set_bond stick_color, color13, (id 7), (id 11)

set_color color14,[240, 255, 0]
bond (id 7), (id 9)
set_bond stick_color, color14, (id 7), (id 9)

set_color color15,[242, 255, 0]
bond (id 9), (id 12)
set_bond stick_color, color15, (id 9), (id 12)

set_color color16,[218, 255, 0]
bond (id 12), (id 15)
set_bond stick_color, color16, (id 12), (id 15)

set_color color17,[248, 255, 0]
bond (id 12), (id 13)
set_bond stick_color, color17, (id 12), (id 13)

set_color color18,[237, 255, 0]
bond (id 12), (id 14)
set_bond stick_color, color18, (id 12), (id 14)

set_color color19,[105, 255, 0]
bond (id 16), (id 18)
set_bond stick_color, color19, (id 16), (id 18)

set_color color20,[231, 255, 0]
bond (id 16), (id 17)
set_bond stick_color, color20, (id 16), (id 17)

set_color color21,[217, 255, 0]
bond (id 18), (id 19)
set_bond stick_color, color21, (id 18), (id 19)

set_color color22,[162, 255, 0]
bond (id 18), (id 30)
set_bond stick_color, color22, (id 18), (id 30)

set_color color23,[234, 255, 0]
bond (id 19), (id 21)
set_bond stick_color, color23, (id 19), (id 21)

set_color color24,[253, 255, 0]
bond (id 19), (id 20)
set_bond stick_color, color24, (id 19), (id 20)

set_color color25,[250, 255, 0]
bond (id 20), (id 22)
set_bond stick_color, color25, (id 20), (id 22)

set_color color26,[252, 255, 0]
bond (id 20), (id 23)
set_bond stick_color, color26, (id 20), (id 23)

set_color color27,[253, 255, 0]
bond (id 21), (id 24)
set_bond stick_color, color27, (id 21), (id 24)

set_color color28,[253, 255, 0]
bond (id 21), (id 25)
set_bond stick_color, color28, (id 21), (id 25)

set_color color29,[253, 255, 0]
bond (id 22), (id 26)
set_bond stick_color, color29, (id 22), (id 26)

set_color color30,[254, 255, 0]
bond (id 22), (id 27)
set_bond stick_color, color30, (id 22), (id 27)

set_color color31,[253, 255, 0]
bond (id 24), (id 26)
set_bond stick_color, color31, (id 24), (id 26)

set_color color32,[253, 255, 0]
bond (id 26), (id 29)
set_bond stick_color, color32, (id 26), (id 29)

set_color color33,[228, 255, 0]
bond (id 32), (id 33)
set_bond stick_color, color33, (id 32), (id 33)

set_color color34,[202, 255, 0]
bond (id 32), (id 34)
set_bond stick_color, color34, (id 32), (id 34)

set_color color35,[121, 255, 0]
bond (id 36), (id 37)
set_bond stick_color, color35, (id 36), (id 37)

set_color color36,[221, 255, 0]
bond (id 36), (id 38)
set_bond stick_color, color36, (id 36), (id 38)

set_color color37,[99, 255, 0]
bond (id 36), (id 39)
set_bond stick_color, color37, (id 36), (id 39)

set_color color38,[157, 255, 0]
bond (id 39), (id 40)
set_bond stick_color, color38, (id 39), (id 40)

set_color color39,[233, 255, 0]
bond (id 39), (id 42)
set_bond stick_color, color39, (id 39), (id 42)

set_color color40,[253, 255, 0]
bond (id 39), (id 41)
set_bond stick_color, color40, (id 39), (id 41)

set_color color41,[249, 255, 0]
bond (id 42), (id 44)
set_bond stick_color, color41, (id 42), (id 44)

set_color color42,[252, 255, 0]
bond (id 42), (id 43)
set_bond stick_color, color42, (id 42), (id 43)

set_color color43,[253, 255, 0]
bond (id 43), (id 46)
set_bond stick_color, color43, (id 43), (id 46)

set_color color44,[250, 255, 0]
bond (id 44), (id 47)
set_bond stick_color, color44, (id 44), (id 47)

set_color color45,[251, 255, 0]
bond (id 44), (id 48)
set_bond stick_color, color45, (id 44), (id 48)

set_color color46,[254, 255, 0]
bond (id 43), (id 45)
set_bond stick_color, color46, (id 43), (id 45)

set_color color47,[254, 255, 0]
bond (id 45), (id 50)
set_bond stick_color, color47, (id 45), (id 50)

set_color color48,[253, 255, 0]
bond (id 47), (id 49)
set_bond stick_color, color48, (id 47), (id 49)

set_color color49,[254, 255, 0]
bond (id 45), (id 49)
set_bond stick_color, color49, (id 45), (id 49)

set_color color50,[254, 255, 0]
bond (id 49), (id 52)
set_bond stick_color, color50, (id 49), (id 52)


