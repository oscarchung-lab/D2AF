import glob
import sys
import os

def pml_str(pmlf, str,dir=None): 
    fr = open(pmlf, 'r')
    lines = fr.readlines()
    fr.close()
    
    vars = str.split(';')
    addlines = [varstmp+os.linesep for varstmp in vars]
    newlines = []
    
    for line in lines:
        newlines.append(line)
        if line.strip() == 'color grey, mol':
            newlines = newlines+addlines

    fw = open(pmlf,'w')
    fw.writelines(newlines)
    fw.close()
    
    if dir != None:
        oldname = os.path.join(dir,pmlf)
        fw = open(oldname,'w')
        fw.writelines(lines)
        fw.close()
def main():
    #print(len(sys.argv))
    if len(sys.argv) == 2:
        strin = sys.argv[1]
        pml_list = glob.glob('*.pml')
        
        if os.path.exists('old'):
            print('old directory exist')
        else:
            os.makedirs('old')
        for pml in pml_list:
            pml_str(pml, strin, 'old')
    else:
        print('giving input lines (using ; to separate lines) in "" ')
        
if __name__ == '__main__':
    main()