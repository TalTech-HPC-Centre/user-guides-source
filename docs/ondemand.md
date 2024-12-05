# OnDemand

OnDemand available at [ondemand.hpc.taltech.ee](https://ondemand.hpc.taltech.ee), is a graphical user interface that allows access to HPC via a web browser. Within the OnDemand environment users can access to a HPC files, submit jobs to a cluster, monitor jobs and HPS resources, run interactive applications like Jupyter.  

The default desktop environment is xfce, which is configurable, lightweight and fast.

The menu only contain very few programs from the operating system. However, **all installed software can be open an XTerminal** using the module system as you would from the command-line. 

## OnDemand Desktop (CPU)

To enter home directory using OnDemand:

1. Choose "TalTech HPC Desktop".

    ![ondemand-1](/visualization/ondemand-1.png){: style="width:85%; height:!85%;"}

2. Set up and launch an interactive desktop (1 core and 1 GB of memory is usually enough if no calculations are planned).

    ![ondemand-2](/visualization/ondemand-2.png){: style="width:65%; height:!65%;"}

    ***NB!*** _Check and your account._

3. Firstly, your request will be put into a queue and this picture will appear.

    ![ondemand-3](/visualization/ondemand-3.png){: style="width:85%; height:!85%;"}

4. When needed resources will become available, your session will start and this picture will appear. 

    We recommend to use default settings for "Compression" and "Image Quality", unless you require high-quality screenshots.

    ![ondemand-4](/visualization/ondemand-4.png){: style="width:85%; height:!85%;"}

    ***NB!*** _Do not use quality settings "Compression 0" and/or "Image Quality 9", this will cause a zlib error message. The message box can be removed by reloading the browser tab._ 

    ![error](/visualization/ondemand-zlib-error.png){: style="width:85%; height:!85%;"}


5. To start interactive desktop press "Launch TalTech HPC Desktop"

    Will appear your HPC Desktop, where user can open XTerminal.

    ![ondemand-5](/visualization/ondemand-5.png){: style="width:85%; height:!85%;"}

6. To start interactive desktop press "Launch TalTech HPC Desktop"

    Load environment and program needed and start vizualization. More detailed instructions on environment and program loading are given below.

    ![ondemand-6](/visualization/ondemand-6.png){: style="width:65%; height:!65%;"}

[More information about using onDemand can be found at visualization page.](/visualization.html)

## OnDemand Desktop on GPU nodes (hardware rendering)

Requires of course to be submitted to a GPU node and a GPU to be reserved. The nodes are configured in a way that requires EGL rendering, and therefore may require other modules to be loaded (e.g. ParaView).

Otherwise the Desktop works as the regular (software rendering) one, see above.

Please note that for most applications software rendering is fast enough, only heavy visulalization, like volume visualization in ParaView, COVISE, VisIt, VMD, Star-CCM+ and Ansys may require the GPU rendering.


**Check using `nvtop` that your application actually uses the GPU!!!**




### _ParaView with EGL acceleration_

It is not possible to have EGL rendering and the OpenGL GUI compiled together, therefore the EGL accelerated `pvserver` and the OpenGL GUI come from different modules and can run on different compute nodes.

The startup procedure for EGL accelerated rendering is the same as for use of ParaView in distributed mode.

1. Start an OnDemand desktop on a GPU node and request a GPU
2. Open 2 XTerms
3. in Xterm 1: `module load rocky8-spack paraview/5.12.1-gcc-10.3.0-dotq` and start the ParaView GUI `paraview`
4. in Xterm 2: `module load rocky8 paraview/5.12.1-egl` and start the ParaView server `pvserver` (alternatively, you could ssh into base and start a separate job on a gpu node with srun or sbatch)
5. in GUI select "Connect" and connect to either localhost:11111 or the gpu node the pvserver runs on, use "manual" connect, then choose "connect".

A similar procedure can also be used to connect a client running on your desktop computer to the pvserver on the compute node.

For more explanations, see [ParaView WIKI](https://www.paraview.org/Wiki/Reverse_connection_and_port_forwarding).

### _StarCCM+ with hardware rendering_

    vglrun starccm+ -clientldpreload /usr/lib64/libvglfaker.so -graphics native -rgpu auto  -power -fabric TCP -podkey $YOURPODKEY ...
