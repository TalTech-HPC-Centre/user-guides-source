# Rhino/Grasshopper/Eddy3d (outdoor)

While those are not (and cannot be) installed on the cluster, it is possible to use them to setup simulations that are run on the cluster. Eddy3d uses OpenFOAM v8 and Radiance for the simulations, both are available on the cluster. Therefore Eddy3d can be used to setup the input files and can also be used for the postprocessing.

## Quick-start:

- Create input structure on the desktop and copy the directory structure to the cluster, using either SCP or SMBFS and copy the results back.
- Map the cluster SMBHOME or an SMBGROUP directory to the local computer, here 'W:' Create a new directory (e.g. named `eddy`) on W: and use this as a "Results" directory in Grasshopper.

Copy the [submit-eddy-array.slurm](submit-eddy-array.slurm) and [controlDict.patch]{controlDict.patch} into the new directory `W:eddy`.

The submit-eddy-array.slurm submits the job as a SLURM array job, the example is for 16 degrees, each degree corresponds to an array-ID and a subdirectory name.  In the example each degree can be run either sequential or as a parallel job with 6 ntasks (adjust the system/decomposeParDict to the number of ntasks you want to use parallel). The `%4` at the end of the array indices limits the concurrent execution of array tasks to 4 at the same time, adjust depending on how busy the cluster is and how much resources you need for each angle run.

When the directory is mapped as a network drive, results can be viewed while the simulation is still running.