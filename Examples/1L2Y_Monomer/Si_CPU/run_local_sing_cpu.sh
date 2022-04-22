#!/bin/bash


module purge
module use /projects/community/modulefiles
module load singularity/3.6.4
#export CONTAINERDIR="/projects/community/ai-fold/2021/bd387/envs/af2.2/container/"
export CONTAINERDIR="/projects/community/alphafold/2022.03/pgarias/"
export CONTAINERDIR="/projects/community/ai-fold/2021/bd387/envs/af2.2/container/"
export ALPHAFOLD_DATA_PATH="/projects/community/alphafold/dbs/"
input_fasta_file=$1
output_data_dir=$2
echo "input fasta file"
echo $input_fasta_file
echo "Output data directory"
echo $output_data_dir


singularity run -B $ALPHAFOLD_DATA_PATH:/data -B .:/etc --pwd /app/alphafold $CONTAINERDIR/alphafoldmm.sif \
    --data_dir=/data \
    --uniref90_database_path=/data/uniref90/uniref90.fasta \
    --uniclust30_database_path=/data/uniclust30/uniclust30_2018_08/uniclust30_2018_08 \
    --mgnify_database_path=/data/mgnify/mgy_clusters_2018_12.fa \
    --bfd_database_path=/data/bfd/bfd_metaclust_clu_complete_id30_c90_final_seq.sorted_opt  \
    --pdb70_database_path=/data/pdb70/pdb70 \
    --template_mmcif_dir=/data/pdb_mmcif/mmcif_files/ \
    --obsolete_pdbs_path=/data/pdb_mmcif/obsolete.dat \
    --fasta_paths=$input_fasta_file  \
    --output_dir=$output_data_dir \
    --model_preset=monomer \
    --db_preset=full_dbs \
    --max_template_date=2021-11-01 \
    --use_gpu_relax=True
