# Multiwfn

## Multiwfn short introduction 

1. Make Multiwfn input `.mwfn`, `.wfn`, `.wfx`, `.fch`, `.molden`, `.gms` (or `.cub`, `.grd`, `.pdb`, `.xyz`, `.mol` - for specific purposes).

2. Run Multiwfn in interactive mode

    ```bash
    srun --pty bash
    module load rocky8/all
    module load multiwfn

    Multiwfn <job.name>
    ```

    ??? note "`answers for Critical Points (CPs) search` output"
        ```bash
        Multiwfn  hf.wfn  << EOF > /dev/null
        2      <- Topological analysis
        2      <- Search CPs from nuclear positions
        3      <- Search CPs from midpoint of atom pairs
        0      <- Print and visualize all generated CPs, paths and surfaces
        -4     <- Modify or export CPs (critical points)
        -1     <- Print summary of CPs (in Angstrom)
        4      <- Save CPs to CPs.txt in current folder
        6      <- Export CPs as CPs.pdb file in current folder
        0      <- Return
        7      <- Show real space function values at specific CP or all CPs
        0      <- If input 0, then properties of all CPs will be outputted to CPprop.txt in current folder
        -10    <- Return
        100    <- Other functions
        2      <- Export various files 
        1      <- Output current structure to .pdb file
        mol.pdb	<- File name
        q 	<- Exit program gracefully
        EOF
        ```

    or with [multiwfn.slurm](/chemistry/multiwfn.slurm) batch script as a non-interactive mode with pre-prepared responses:

    ```bash
    #!/bin/bash
    #SBATCH --nodes=1
    #SBATCH --ntasks=1
    #SBATCH --job-name=test
    #SBATCH --mem=2GB
    #SBATCH -t 10:00
    #SBATCH --partition=short

    module load rocky8/all
    module load multiwfn 

    Multiwfn  hf.wfn  << EOF > /dev/null

    ***ANSWERS***

    q
    EOF
    ```

    In this case job is submitted using `sbatch` command:

    ```bash    
    sbatch multiwfn.slurm
    ```        
   
5. Visualize results if needed using [ondemand.hpc.taltech.ee](https://ondemand.hpc.taltech.ee) and VMD
    
    ```bash
    module load rocky8-spack
    module load vmd
    vmd job.pdb
    ```
                
    ***NB!*** It is recommended to visualize Multiwfn results in VMD program, corresponding scripts are provided in Multiwfn examples _(/gpfs/mariana/software/green/MultiWFN/Multiwfn_3.7_bin_Linux/examples/)_.

## Multiwfn long version 

### Options

Multiwfn is an interactive program performing almost all of important wavefunction analyszes (showing molecular structure and orbitals, calculating real space function, topology analysis, population analysis, orbital composition analysis, bond order/strength analysis, plotting population density-of-states, plotting various kinds of spectra (including conformational weighted spectrum), quantitative analysis of molecular surface, charge decomposition analysis, basin analysis, electron excitation analyses, orbital localization analysis, visual study of weak interaction, conceptual density functional theory (CDFT) analysis, energy decomposition analysis).

For many frequently used analyszes Multiwfn has [short youtube videos](https://www.youtube.com/user/sobereva) and "quick start" examples (`/gpfs/mariana/software/green/MultiWFN/Multiwfn_3.7_bin_Linux/examples/`). More information can be found in the [manual](Manual_Multiwfn.pdf). 


### Input

As an input Multiwfn uses output files of other quantum chemistry programs, including Gaussian, ORCA, GAMESS-US, NWChem, xtb, Turbomole. For example, `.wfn` (wavefunction file), `.fch` (Gaussian check file), `.molden` (Molden input file), `.gms` (GAMESS-US output file), `.mwfn` (Multiwfn wavefunction file). Other types of files, such as  such as `.cub`, `.grd`, `.pdb`, `.xyz`, `.log`, `.out`  and `.mol` files, may be used in certain cases and purposes.

### Environment

Environment is set up by the commands:

```bash
module load rocky8/all
module load multiwfn
```

The first time use, user has to agree to the licenses: 

```bash        
touch ~/.licenses/multiwfn-accepted 
```

if this is the first user license agreement, the following commands should be given:

```bash
mkdir .licenses
touch ~/.licenses/multiwfn-accepted 
```

***NB!*** After agreeing to the license, user has to log out and log in again to be able run `Multiwfn`.  

        
### Running Multiwfn 

***NB!*** 
Since Multiwfn has a lot of functionality, we recommend that the user first study the corresponding section in the manuals ([text](/chemistry/Manual_Multiwfn.pdf), [video](https://www.youtube.com/user/sobereva)) or examples (`/gpfs/mariana/software/green/MultiWFN/Multiwfn_3.7_bin_Linux/examples/`). This will greatly simplify the selection of answers in the interactive menu.

The best practice is to try to reproduce something from the examples folder. To do this, the corresponding files will need to be copied to the user's derictory using the following commands:

```bash
mkdir examples
cp -r /gpfs/mariana/software/green/MultiWFN/Multiwfn_3.7_bin_Linux/examples/* examples/
```

***NB!*** The user can run Multiwfn only from his own folder, not from the shared.

For jobs connected to electron density analysis especially in large systems it is recommended to run [multiwfn.slurm](multiwfn.slurm) batch script with pre-prepared responses. Below is shown slurm script for Critical Points (CPs) search using job.wfn:

```bash
#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=test
#SBATCH --mem=2GB
#SBATCH -t 10:00
#SBATCH --partition=short

module load rocky8/all
module load multiwfn 

Multiwfn  hf.wfn  << EOF > /dev/null
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
q
EOF
```

Job is submitted by `sbatch` command:

```bash    
sbatch multiwfn.slurm   
```

### Results visualization
        
Although Multiwfn has its own graphical interface, we recommend to visualize Multiwfn results in VMD (Visual Molecular Dynamics) program, corresponding scripts are provided in Multiwfn  examples (`/gpfs/mariana/software/green/MultiWFN/Multiwfn_3.7_bin_Linux/examples/`) (with `.vmd` extensions). For visualisation we recommend to use [ondemand.hpc.taltech.ee](https://ondemand.hpc.taltech.ee). More about [ondemand use](/ondemand.html) and [VMD](/chemistry/visualization.html#vmd).

VMD environment is set up by the commands:

```bash
module load rocky8-spack
module load vmd
```

VMD is run by command `vmd`:

```bash
vmd job.pdb
```            

#### How to cite:

**Citing the original paper of Multiwfn is mandatory** - DOI: [10.1002/jcc.22885](https://onlinelibrary.wiley.com/doi/abs/10.1002/jcc.22885)

**In addition, the following articles should be cited depending on the analyzes performed**:

- Quantitative molecular surface analysis (main function 12) - DOI:[10.1016/j.jmgm.2012.07.004](https://www.sciencedirect.com/science/article/abs/pii/S1093326312000903)
- Hole-electron analysis (subfunction 1 of main function 18) - DOI:[10.1016/j.carbon.2020.05.023](https://www.sciencedirect.com/science/article/abs/pii/S0008622320304644)
- Electrostatic potential evaluation algorithm - DOI:[10.1039/D1CP02805G](https://pubs.rsc.org/en/content/articlelanding/2021/cp/d1cp02805g)
- Orbital composition analysis (main function 8). - _Tian Lu, Feiwu Chen, Calculation of Molecular Orbital Composition, Acta Chim. Sinica, 69, 2393-2406 (2011)_ (in Chinese) ([http://sioc-journal.cn/Jwk_hxxb/CN/abstract/abstract340458.shtml](http://sioc-journal.cn/Jwk_hxxb/CN/abstract/abstract340458.shtml))
- Charge decomposition analysis (CDA) (main function 16) - _Meng Xiao, Tian Lu, Generalized Charge Decomposition Analysis (GCDA) Method,
Journal of Advances in Physical Chemistry, 4, 111-124 (2015)_ (in Chinese) ([http://dx.doi.org/10.12677/JAPC.2015.44013](http://dx.doi.org/10.12677/JAPC.2015.44013))
- Atomic dipole moment corrected Hirshfeld (ADCH) - DOI:[10.1142/S0219633612500113](https://www.worldscientific.com/doi/10.1142/S0219633612500113)
- Population analysis module (main function 7) - DOI:[10.3866/PKU.WHXB2012281](http://www.whxb.pku.edu.cn/EN/10.3866/PKU.WHXB2012281)
- Laplacian bond order (LBO) - DOI: [10.1021/jp4010345](https://pubs.acs.org/doi/10.1021/jp4010345)
- Statistical analysis of area in different ESP ranges on vdW surface - DOI:[10.1007/s11224-014-0430-6](https://pubs.acs.org/doi/10.1021/jp4010345)
- Charge-transfer spectrum  - DOI:[10.1016/j.carbon.2021.11.005](https://www.sciencedirect.com/science/article/abs/pii/S0008622321010745?via%3Dihub)
- Electron localization function (ELF) - DOI:[10.3866/PKU.WHXB20112786](http://www.whxb.pku.edu.cn/EN/10.3866/PKU.WHXB20112786)
- Analysis of valence electron and deformation density - DOI:[10.3866/PKU.WHXB201709252](http://www.whxb.pku.edu.cn/EN/10.3866/PKU.WHXB201709252)
- Predicting binding energy of hydrogen bonds based properties of bond critical point - DOI:[10.1002/jcc.26068](https://onlinelibrary.wiley.com/doi/abs/10.1002/jcc.26068)
- electron analysis based on localized molecular orbitals (e.g. subfunction 22 of main function 100) - DOI:[10.1007/s00214-019-2541-z](https://link.springer.com/article/10.1007/s00214-019-2541-z)
- van der Waals potential analysis (subfunction 6 of main function 20) - DOI:[10.1007/s00894-020-04577-0](https://pubmed.ncbi.nlm.nih.gov/33098007/)
- Interaction region indicator (IRI) (subfunction 4 of main function 20) - DOI:[10.1002/cmtd.202100007](https://chemistry-europe.onlinelibrary.wiley.com/doi/10.1002/cmtd.202100007)
- Independent gradient model based on Hirshfeld partition (IGMH) (subfunction 11 of main function 20) - DOI:[10.1002/jcc.26812](https://onlinelibrary.wiley.com/doi/abs/10.1002/jcc.26812)
- ICSSZZ map (subfunction 4 in main function 200) - DOI:[10.1016/j.carbon.2020.04.099](https://www.sciencedirect.com/science/article/abs/pii/S000862232030436X)
- MO-PDOS map (Option -2 in main function 10) - DOI:[10.1016/j.carbon.2020.05.023](https://www.sciencedirect.com/science/article/abs/pii/S0008622320304644)
- Molecular polarity index (MPI) (outputted by main function 12) - DOI:[10.1016/j.carbon.2020.09.048](https://www.sciencedirect.com/science/article/abs/pii/S0008622320309076)
- Analysis of valence electron and deformation density - DOI:[10.3866/PKU.WHXB201709252](http://www.whxb.pku.edu.cn/EN/10.3866/PKU.WHXB201709252)
- Studying molecular planarity via MPP, SDP and coloring atoms according to ds values - DOI:[10.1007/s00894-021-04884-0](https://pubmed.ncbi.nlm.nih.gov/34435265/)
- Energy decomposition analysis based on force field (EDA-FF) - DOI:[10.1016/j.mseb.2021.115425](https://www.sciencedirect.com/science/article/abs/pii/S0921510721003834)
