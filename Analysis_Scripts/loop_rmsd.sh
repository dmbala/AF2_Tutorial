#!/bin/bash
export PATH="/usr/lpp/mmfs/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin"
module use /projects/community/modulefiles
module load PyMol 
module load ai-fold
source activate af2

cp  $1 input1.pdb
echo "RMSD values of all the ranked molecules" > rmsd_ranked_pdbs.dat
for i in ranked*.pdb
do
    echo -n  "$j - $i  : "
    cp $i input2.pdb
    python ./rmsd.py  >> rmsd_ranked_pdbs.dat
done
rm input?.pdb
cat rmsd_ranked_pdbs.dat
