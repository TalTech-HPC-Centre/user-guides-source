# LUMI

## What is LUMI?

LUMI is the fastest supercomputer in Europe. It's an HPE Cray EX supercomputer consisting of several hardware partitions targeted different use cases:

- 2560 GPU-based nodes ([**LUMI-G**](https://docs.lumi-supercomputer.eu/hardware/lumig/)), each node with one 64 core AMD Trento CPU and four AMD MI250X GPUs.
- 1536 dual-socket CPU nodes [**LUMI-C**](https://docs.lumi-supercomputer.eu/hardware/lumic/) with 64-core 3rd-generation AMD EPYC™ CPUs, and between 256 GB and 1024 GB of memory.
- large memory GPU nodes [**LUMI-D**](https://docs.lumi-supercomputer.eu/hardware/lumid/), with a total of 32 TB of memory in the partition for data analytics and visualisation.
- Main storage - [**LUMI-P**](https://docs.lumi-supercomputer.eu/storage/parallel-filesystems/lumip/) has 4 independent Lustre file systems with 20 PB and an aggregate bandwidth of 240 GB/s each. Each Lustre file system is composed of 1 MDS (metadata server) and 32 Object Storage Targets (OSTs).
- Flash storage - [**LUMI-F**](https://docs.lumi-supercomputer.eu/storage/parallel-filesystems/lumif/) has Lustre file system with a storage capacity of 8 PB and an aggregate bandwidth of 1 740 GB/s.
- Object store -  [**LUMI-O**](https://docs.lumi-supercomputer.eu/storage/lumio/) provides 30 PB storage.

More  about LUMI system architecture can be found in [overview](https://docs.lumi-supercomputer.eu/hardware/) and [LUMI’s full system architecture](https://www.lumi-supercomputer.eu/lumis-full-system-architecture-revealed/).

LUMI uses Slurm as job scheduler and resource manager. Slurm partitions can be allocated by node or by resources. More about partitions can be found [here](https://docs.lumi-supercomputer.eu/runjobs/scheduled-jobs/partitions/).

## Why LUMI?

There are several reasons to choose LUMI instead of HPC:

- if job is run using GPUs
- if job needs large memory
- if queue on HPC is too long

## Getting started

- [How to get access to LUMI](/lumi/start.html)
- [Software](/lumi/software.html)
- [Examples of jobs and slurm scripts](/lumi/examples.html)
- [Billing](/index.html#billing)
