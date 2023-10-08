import sys
import os

def write_run_pml(Method, number):
    
    if Method == 'M1':
        typelist = ['frag']
    elif Method == 'M2':
        typelist = ['bond','angle','total']
    elif Method == 'M3':
        typelist = ['bond','angle','frag','total']
    else:
        sys.exit('Method not defined')
        
    fw = open('run%s.pml'%(Method),'w')
    for type in typelist:
        for i in range(number): 
            fw.write('reinitialize \n')
            fw.write('run Conf_%d_%s_%s.pml\n'%(i,Method,type))
            fw.write('savepng %s_%s_%d\n'%(Method,type,i))
            fw.write('\n')

def write():
    if len(sys.argv) == 3:
        method = sys.argv[1]
        number = sys.argv[2]
        write_run_pml(method, number)
    else:
        print('giving method number')
        print('eg: M2 125')
        