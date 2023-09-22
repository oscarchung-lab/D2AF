from pymol import cmd
import os

#def loadpdbED(pdbf,resn,ED,DED):
def savepng(name='XX'):
	#view
    try:
        view=[0]*18
        fv=open('view.dat','r')
        fv.readline()
        for i in range(6):
            line=fv.readline()
            var=line.replace(")"," ").replace("\\"," ").split(",")
            view[i*3]=float(var[0])
            view[i*3+1]=float(var[1])
            view[i*3+2]=float(var[2])
        fv.close()
        cmd.set_view(view)
    except IOError:
        print("view.dat is not accessible.")
		
    cmd.ray(1200,1200)
	
    cmd.png(name+'.png',1200,1200,600,1)

cmd.extend('savepng', savepng)