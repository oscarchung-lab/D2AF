from FSV import inputs
import FSV.basis_functions as bf
from FSV import fragmentation
import argparse
import time
import os
from FSV import Results
import math

def get_arguments(arg_list=None):
    parser = argparse.ArgumentParser(description="Analysis strain energy between ref and conf structure using framentation & internal coordinates",formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('-inp','--input',    
                        type=str,
                        default=None, 
                        help='''confige parameter file
inp file example:
    ref = ref.gjf
    conf = conf.gjf
    method = int
    cpu = int
    pal = int
    calculator = g16  
    scale = float or e
    
    #fraglist (optional: only method = 1/3 required)
    1-2,4-6
    3
    
    #coordination (optional: only method = 3 available)
    3-5

    #include (optional: only method = 2/3 and extra bond/angles (no connection ) are needed)
    1 2
    1 2 3 

    #exclude (optional: only method = 2/3 and extra bond/angles are not need
    4 7 
    4 7 9

    #charge (optional: only if atomic charge not zero required)
    5 1
    
    #spin (optional: only if atomic charge not zero required)
    3 1''')
    parser.add_argument('-m','--method',    
                        type=int,
                        default=None, 
                        help='method number')
    parser.add_argument('-d','--draw',    
                        type=str,
                        default=None, 
                        help='xlsx file, used to write pml file')
    parser.add_argument('-f','--file',    
                        type=str,
                        default=None, 
                        help='mol file (.xyz)')
    parser.add_argument('-s','--scale',    
                        type=str,
                        default=None, 
                        help='scale method (log is available)')
    return parser.parse_args(arg_list)

def run():
    print('Job starts at: '+time.asctime())
    args = get_arguments()

    if args.input is not None: #using input file 
        input_para = inputs.read_inp(args.input)
        inpname = os.path.splitext(args.input)[0]
        ref = input_para['ref']
        conf = input_para['conf']
        method = input_para['method']
        cpu = input_para['cpu']
        pal = input_para['pal']
        chg = input_para['charge']
        spin = input_para['spin']
        calculator = input_para['calculator']

        bf.jobname = inpname
        bf.ncpu = int(cpu)
        bf.pal = int(pal)

        fragmentation.fragmentations(calculator, method, ref, conf, chgf=chg, spinf=spin, input_para=input_para)
            
        print('Job ends at: '+time.asctime())
    elif args.draw is not None: #using draw file
        if args.scale is not None:
            Results.iflog = True
            if args.scale == 'e':
                Results.lognum = math.e
            else:
                Results.lognum = float(args.scale)
            print('Using log (%s) scale for visualization'%args.scale)
        else:
            Results.iflog = False
            print('Using Normal scale for visualization')
        Results.xlsx2pml(args.method, args.file, args.draw)
    else:
        print('Input file not found, nor xlsx file for draw')
    
if __name__ == '__main__':
    run()
    