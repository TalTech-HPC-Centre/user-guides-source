#!/bin/bash
#SBATCH --account=project_CHANGEME  ### CHANGE THIS TO YOUR PROJECT/COURSE
#SBATCH --job-name=CREST-test
#SBATCH --mem-per-cpu=1GB
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH -t 1-00:00:00
#SBATCH --partition=short

    module load rocky8/all
    module load xtb-crest/6.7.0-crest3.0
  
    #Run calculations 
    crest geometry.xyz --gfn2 --T 24 > final.out

    
