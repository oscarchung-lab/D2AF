import sys
import os

def write_run_pml(Method, number):
    
    if Method == 'M1':
        typelist = ['frag','frag_show']
    elif Method == 'M2':
        typelist = ['bond','bond_delta','angle','anglep_delta','anglen_delta','total']
    elif Method == 'M3':
        typelist = ['bond','angle','frag','total']
    else:
        sys.exit('Method not defined')
        
    fw = open('run%s.pml'%(Method),'w')
    if number == 1:
        for type in typelist:
            fw.write('reinitialize \n')
            fw.write('run Conf_%s_%s.pml\n'%(Method,type))
            fw.write('savepng %s_%s\n'%(Method,type))
            fw.write('\n')
    else:
        for type in typelist:
            for i in range(number): 
                fw.write('reinitialize \n')
                fw.write('run Conf_%d_%s_%s.pml\n'%(i,Method,type))
                fw.write('savepng %s_%s_%d\n'%(Method,type,i))
                fw.write('\n')
def write():
    if len(sys.argv) == 3:
        method = sys.argv[1]
        number = int(sys.argv[2])
        write_run_pml(method, number)
    else:
        print('giving method number')
        print('eg: M2 125')
        print('eg: M2 1 # for non-multi-conformers case')
        