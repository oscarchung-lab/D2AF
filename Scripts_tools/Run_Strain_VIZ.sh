#this script was written by Dr. YAN Zeyin at 2019
#contact: zeyin.yan@outlook.com，Southern University of Science and Technology
#!/bin/bash
#Desc: gaussian's job submit script
#Created By: fedoracle
#Date: 29/10/2014 ==>31/10/2014; Modified by OC
#Version: 0.1 ==> 0.2

if [[ $# -le 0 ]]
then
    echo -e "\033[32mUsage: $0 input.inp queue_name (N1, B1 or F1)  \033[0m"
    echo -e "\033[33mFor example: $0 1H-out.inp default \033[0m"
    exit 101
fi

#echo -e "\033[32m                 Free Nodes or Queue Currently\033[0m"
#chk3node.sh
#echo -e "\033[33m \033[0m"

dos2unix $1 >/dev/null

procs=`head -10 $1 | grep -i "cpu" | head -1 | awk -F'=' '{print $2}'`
pal=`head -10 $1 | grep -i "pal" | head -1 | awk -F'=' '{print $2}'`
Nprocs=`echo $(($procs * $pal))`
Nmem=`echo $(($procs * $pal * 2 - 4))GB`

if [[ $Nprocs == "" ]]
then
    Nprocs=1
fi

if [[ "$2" == "N1" ]]
then
    Queue=$2
elif [[ "$2" == "N2" ]]
then
    Queue=$2
elif [[ "$2" == "B1" ]]
then
    Queue=$2
elif [[ "$2" == "B2" ]]
then
    Queue=$2
elif [[ "$2" == "B3" ]]
then
    Queue=$2
elif [[ "$2" == "B5" ]]
then
    Queue=$2
elif [[ "$2" == "F1" ]]
then
    Queue=$2
elif [[ "$2" == "N3" ]]
then
    Queue=$2
    let  "Div10 = $Nprocs % 5"
    if [[ $Div10 -ne 0 ]]
    then
      echo -e "\033[32m $Nprocs must be 10 or 20 for queue N3!!! \033[0m"
      echo -e "\033[32m Please modify your input file!!! \033[0m"
      exit 102
    fi
elif [[ "$2" == "N4" ]]
then
    Queue=$2
    let  "Div12 = $Nprocs % 4"
    if [[ $Div12 -ne 0 ]]
    then
      echo -e "\033[32m $Nprocs must be 4, 8, 12, 16, 20, or 24 for queue N4!!! \033[0m"
      echo -e "\033[32m Please modify your input file!!! \033[0m"
      exit 102
    fi
elif [[ "$2" == "N5" ]]
then
    Queue=$2
    let  "Div12 = $Nprocs % 4"
    if [[ $Div12 -ne 0 ]]
    then
      echo -e "\033[32m $Nprocs must be 4, 8, 12, 16, 20, or 24 for queue N5!!! \033[0m"
      echo -e "\033[32m Please modify your input file!!! \033[0m"
      exit 102
    fi
elif [[ "$2" == "d" ]]
then
    Queue="default"
else
    Queue="default"
fi

if [[ $Queue == "default" || $Queue == "N1" || $Queue == "N2" || $Queue == "B1" ]]
then
    if [[ $Nprocs -gt 16 ]]
    then
       echo -e "\033[32m $Nprocs > Max 16 core for $Queue! Please modify your input file! \033[0m"
       exit 102
    fi 
elif [[ $Queue == "N3" ]]
then
    if [[ $Nprocs -gt 20 ]]
    then
       echo -e "\033[32m $Nprocs > Max 20 core for $Queue! Please modify your input file! \033[0m"
       exit 102
    fi
elif [[ $Queue == "N4" ]]
then
#modified by ZQH, as hyper-threading of N4 nodes is turned off. Under this situation, the cpu cores for each N4 nodes is 24.
    #if [[ $Nprocs -gt 48 ]]
    if [[ $Nprocs -gt 24 ]]
    then
       echo -e "\033[32m $Nprocs > Max 48 core for $Queue! Please modify your input file! \033[0m"
       exit 102
    fi

elif [[ $Queue == "F1" ]]
then
    if [[ $Nprocs -gt 32 ]]
    then
       echo -e "\033[32m $Nprocs > Max 32 core for $Queue! Please modify your input file! \033[0m"
       exit 102
    fi
fi

#if empty memory parameter
if [[ $Nmem == "" ]]
then
    Nmem=$Nprocs'gb' 
fi
#dos2unix $1 >/dev/null

#if test -e "$JobName.log"
#then
#   cat "$JobName.log" >> "$JobName.log_1"
#   echo "The original output file $JobName.log is appended to $JobName.log_1"
#fi

JobSub=`echo $1 | sed 's/.inp/.pbs/g'`
JobName=`echo $1 | sed 's/.inp//g'`
USER=`whoami`

cat<<EOF>$JobSub
#!/bin/bash
#PBS -N $JobName
#PBS -l nodes=1:ppn=$Nprocs
#PBS -l mem=$Nmem
#PBS -j oe
#PBS -r n
#PBS -q $Queue
EOF

# Check whether a time specification has been inserted
if [[ "x$3" != "x" ]] # if there is a walltime specification
then
  time=$3
cat<<EOF>>$JobSub
#PBS -l walltime=$time:00:00
EOF
else
cat<<EOF>>$JobSub
#PBS -l walltime=360:00:00
EOF
fi

cat<<EOF>>$JobSub
cd \$PBS_O_WORKDIR

Node=\`cat \$PBS_NODEFILE | uniq\`
NNo=\`cat \$PBS_NODEFILE | uniq | sed -e 's/node//'\`

TEMP="tmp"


ssh \$Node "mkdir -p /\$TEMP/\$PBS_JOBID"
ssh \$Node "mkdir -p /\$TEMP/\$PBS_JOBID/run"

act_dir=/\$TEMP/\$PBS_JOBID/run

rm -f "$JobName.log"

cp -rf * \$act_dir
cd \$act_dir

source activate Strain_VIZ


echo "This job is running on host \$Node" > "\$PBS_O_WORKDIR/$JobName.log"
echo "Current directory: \$act_dir" >> "\$PBS_O_WORKDIR/$JobName.log"
date >> "\$PBS_O_WORKDIR/$JobName.log"
source /share/apps/gaussian/g16-env.sh
export GAUSS_SCRDIR=/\$TEMP/\$PBS_JOBID
echo \$GAUSS_SCRDIR >> "\$PBS_O_WORKDIR/$JobName.log"

OBSV -inp $1 >> "\$PBS_O_WORKDIR/$JobName.log"
#/share/apps/gaussian/g16/formchk $JobName $JobName

date >> "\$PBS_O_WORKDIR/$JobName.log"

cp -rf * \$PBS_O_WORKDIR

cd \$PBS_O_WORKDIR

ssh \$Node "rm -rf \$GAUSS_SCRDIR"

EOF

echo "This Strain_energy job will request $Nprocs cores on the queue $Queue"
#added by ZQH,to avoid memery overload since N4 queue node has 32GB memery now
#add note as hyper-threading of N4 is turned off
#if  [ $Queue = "N4" ]; then
#        sed -i -e "/nodes=.*ppn=/s/=[0-9]*\s*$/=48/g" $JobSub
#fi
##
qsub $JobSub

#rm -rf $JobSub

sleep 1

