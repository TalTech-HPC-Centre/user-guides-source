#!/bin/bash -l
#SBATCH -n 1
#SBATCH --cpus-per-task=2
#SBATCH -t 10:40:00  
#SBATCH -p common
#SBATCH --mem=18G
#SBATCH --account=project_hpc_internal
#SBATCH --array=0,23,45,68,90,113,135,158,180,225,248,270,293,315,338%4
#SBATCH -J windcomfort


module load rocky8-spack openfoam-org/8-gcc-10.3.0-a2nj openmpi/4.1.1-gcc-10.3.0-r8-tcp

cd $SLURM_ARRAY_TASK_ID
patch -p1 system/controlDict < ../controlDict.patch

if [ "$SLURM_NTASKS" -gt "1" ]; then
  #echo $PWD
  #cp -r ../mesh/processor* .
  decomposePar
  srun simpleFoam -parallel
  reconstructPar
else
  simpleFoam
fi

