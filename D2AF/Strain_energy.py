from D2AF import inputs
import D2AF.basis_functions as bf
from D2AF import fragmentation
import argparse
import time
import os
from D2AF import Results
import math
import sys
import logging 

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
    parser.add_argument('-f','--file',    
                        type=str,
                        default=None, 
                        help='mol file (.xyz)')
    parser.add_argument('-s','--scale',    
                        type=str,
                        default=None, 
                        help='scale method (log is available)')
    parser.add_argument('-d','--draw',    
                        type=str,
                        default=None, 
                        help='xlsx file, used to write pml file')
    parser.add_argument('-e','--energy',    
                        type=str,
                        default=None, 
                        help='energy data file, collected by user')
    parser.add_argument('-l','--log',    
                        type=str,
                        default='INFO', 
                        help='log level: DEBUG, INFO, WARNING, ERROR, CRITICAL')
    return parser.parse_args(arg_list)

def run():
    args = get_arguments()

    logger = logging.getLogger('main')
    cmd_handler = logging.StreamHandler(sys.stdout)
    logger.addHandler(cmd_handler)
    logger.setLevel(logging.INFO)

    if args.log is not None:
        if args.log.lower() == 'debug':
            logger.setLevel(logging.DEBUG)
        elif args.log.lower() == 'info':
            logger.setLevel(logging.INFO)
        elif args.log.lower() == 'warning':
            logger.setLevel(logging.WARNING)
        elif args.log.lower() == 'error':
            logger.setLevel(logging.ERROR)
        elif args.log.lower() == 'critical':
            logger.setLevel(logging.CRITICAL)
        else:
            logger.setLevel(logging.WARNING)

        log_level = args.log.upper()
    else:
        logger.setLevel(logging.INFO)
        log_level= 'INFO'
        
        
    bf.print_head()
    logger.critical('log level: '+log_level+'\n')
    logger.critical('Job begins at: '+time.asctime()+'\n')
    

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
            
        logger.critical('Job ends at: '+time.asctime())
    elif args.draw is not None: #using draw file
        if args.scale is not None:
            Results.iflog = True
            if args.scale == 'e':
                Results.lognum = math.e
            else:
                Results.lognum = float(args.scale)
            logger.critical('Using log (%s) scale for visualization'%args.scale)
        else:
            Results.iflog = False
            logger.critical('Using Normal scale for visualization')

        if args.energy is not None:
            if os.path.exists(args.energy):
                Results.update_xlsx_ene(args.method, args.draw, args.energy)
                logger.critical('Strain energy in %s was updated based on %s'%(args.draw, args.energy))
        Results.xlsx2pml(args.method, args.file, args.draw)
    else:
        logger.critical('Input file not found,ls nor xlsx file for draw')
    
if __name__ == '__main__':
    run()
    