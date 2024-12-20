#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=test
#SBATCH --mem=2GB
#SBATCH -t 10:00
#SBATCH --partition=short

module load rocky8/all
module load multiwfn 

Multiwfn  file-name.wfn << EOF > /dev/null
2    <- Topological analysis
2    <- Search CPs from nuclear positions
3    <- Search CPs from midpoint of atom pairs
0    <- Print and visualize all generated CPs, paths and surfaces
-4    <- Modify or export CPs (critical points)
-1    <- Print summary of CPs (in Angstrom)
4    <- Save CPs to CPs.txt in current folder	
6    <- Export CPs as CPs.pdb file in current folder
0    <- Return
7       <- Show real space function values at specific CP or all CPs
0       <- If input 0, then properties of all CPs will be outputted to CPprop.txt in current folder
-10    <- Return
100	<- Other functions
2	<- Export various files 
1	<- Output current structure to .pdb file
mol.pdb	<- File name
q	<- Exit program gracefully
EOF
