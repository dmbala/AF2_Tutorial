#!/bin/bash
for mer in 1L2Y_Monomer 1L2Y_Dimer
do 
    cd $mer
    pwd 
    for sub_dir in *
    do 
        cd $sub_dir
        pwd 
        #sbatch run*.slrm
        cd ..
    done  
    cd ..
done 
