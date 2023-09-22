#!/bin/bash
#methods=('g16' 'gfn2-xtb' 'ani-2x' 'aiqm1')
methods=('g16' 'gfn2-xtb')
if [[ $# -eq 3 ]]
then
	M1inp=$1
    M2inp=$2
    ref=`grep ref $M1inp | awk -F '=' '{print $2}'`
    conf=`grep conf $M1inp | awk -F '=' '{print $2}'`
    echo $ref $conf
    for method in "${methods[@]}"
    do
        mkdir "$method"
        cp $ref "$method/"
        cp $conf "$method/"
        cp $M1inp "$method/"    
        cp $M2inp "$method/"

        cd "$method"
        sed -i 's/calculator =.*/calculator = '$method'/g' $M1inp
        sed -i 's/calculator =.*/calculator = '$method'/g' $M2inp

        Run_Strain_VIZ.sh $M1inp $3
        Run_Strain_VIZ.sh $M2inp $3
        cd ..
    done
    
elif [[ $# -eq 4 ]]
then
	M1inp=$1
    M2inp=$2
    M3inp=$3
    ref=`grep ref $M1inp | awk -F '=' '{print $2}'`
    conf=`grep conf $M1inp | awk -F '=' '{print $2}'`
    echo $ref $conf
    for method in "${methods[@]}"
    do
        mkdir "$method"
        cp $ref "$method/"
        cp $conf "$method/"
        cp $M1inp "$method/"    
        cp $M2inp "$method/"
        cp $M3inp "$method/"

        cd "$method"
        sed -i 's/calculator =.*/calculator = '$method'/g' $M1inp
        sed -i 's/calculator =.*/calculator = '$method'/g' $M2inp
        sed -i 's/calculator =.*/calculator = '$method'/g' $M3inp
        Run_Strain_VIZ.sh $M1inp $4
        Run_Strain_VIZ.sh $M2inp $4
        Run_Strain_VIZ.sh $M3inp $4
        cd ..
    done
else
	echo -e "\033[32mUsage: $0 M1.inp M2.inp queue \033[0m"
	echo -e "\033[32mUsage: $0 M1.inp M2.inp M3.inp queue \033[0m"
	echo -e "\033[32mUsage: methods=('g16' 'gfn2-xtb') \033[0m"
	exit 101
fi