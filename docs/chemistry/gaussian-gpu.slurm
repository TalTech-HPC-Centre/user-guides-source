#!/bin/bash
#SBATCH --job-name=dft-opt
#SBATCH -t 0-00:10:00
#SBATCH  --no-requeue
#SBATCH --partition=gpu         # Partition
#SBATCH --gres=gpu:A100:2       # 2 GPU are reserved
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6       # 6 CPU are reserved
#SBATCH --mem=20GB              # Memory
# #SBATCH --exclusive

module load rocky8/all
# module load nvhpc/21.2
module load gaussian/16.c02

SCRATCH=/state/partition1/$SLURM_JOB_ID
export GAUSS_SCRDIR=$SCRATCH
mkdir -p $SCRATCH

g16 job.com > job.log

#Clean after yourself
rm -rf  $SCRATCH