# Visualization

The recommended way of doing visualizations is now using the **desktop session** on [ondemand.hpc.taltech.ee](https://ondemand.hpc.taltech.ee).

OnDemand is a graphical user interface that allows access to HPC via a web browser. The default desktop environment is xfce, which is configurable, lightweight and fast.

The menu only contain very few programs from the operating system. However, **all installed software can be opened from an XTerminal** using the module system as you would from the command-line.

## OnDemand Desktop on any node and CPU

---

![ondemand-1](/visualization/ondemand-1.png)

[More information can be found at OnDemand page.](/ondemand.html)

### _Available visualization software on compute nodes_

Program from a list below and its environment can be loaded by:

	module load rocky8-spack
	module load <program name>

_where **program** must be written in **lowercase letters**_ 

-   ParaView 
-   VisIt 
<!-- -   COVISE -->
-   Py-MayaVi 
<!-- -   OpenDX -->
-   Molden
<!-- -   VAPOR -->
-   VMD 
-   Ovito
-   Ospray (raytracer)
-   PoVray (raytracer)

Programs are run by corresponding names in lowercase letters: **paraview** / **visit** / **vmd**.

#### GaussView & Avogadro

GaussView can be started by commands:

```bash
module load rocky8/all
module load gaussview
gview.sh <job name>
```

To run Avogadro:

```bash
module load rocky8/all
module load avogadro
avogadro <job name>
```

#### 3D Slicer

Visualization and processing of medical images (CT, MRI)

```bash
module load rocky8
module load slicer
```

## OnDemand Desktop on GPU nodes (hardware rendering)

---

Requires of course to be submitted to a GPU node and a GPU to be reserved. The nodes are configured in a way that requires EGL rendering, and therefore may require other modules to be loaded (e.g. ParaView).

Otherwise the Desktop works as the regular (software rendering) one, see above.

Please note that for most applications software rendering is fast enough, only heavy visulalization, like volume visualization in ParaView, COVISE, VisIt, VMD, Star-CCM+ and Ansys may require the GPU rendering.


**Check using `nvtop` that your application actually uses the GPU!!!**


### _ParaView with EGL acceleration_

It is not possible to have EGL rendering and the OpenGL GUI compiled together, therefore the EGL accelerated `pvserver` and the OpenGL GUI come from different modules and can run on different compute nodes.

The startup procedure for EGL accelerated rendering is the same as for use of ParaView in distributed mode:

1. Start an OnDemand desktop on a GPU node and request a GPU.
2. Open 2 XTerms.
3. In Xterm 1 start the ParaView GUI:

	```bash
	module load rocky8-spack 
	module load paraview/5.12.1-gcc-10.3.0-dotq
	paraview
	```

4. In Xterm 2 start the ParaView server:

	```bash 
	module load rocky8 
	module load paraview/5.12.1-egl 
	pvserver
	```

	(alternatively, you could ssh into base and start a separate job on a gpu node with srun or sbatch) in GUI select "Connect" and connect to either localhost:11111 or the gpu node the pvserver runs on, use "manual" connect, then choose "connect".

5. In Xterm 3 run `nvtop` to check if your application actually uses the GPU:
	```bash 
	nvtop
	```
	
	![paraview-XT-1](/visualization/paraview-XT-1.png){: style="width:85%; height:!85%;"}
	![paraview-XT-3](/visualization/paraview-XT-3.png){: style="width:85%; height:!85%;"}
		
	![paraview](/visualization/paraview.png)



A similar procedure can also be used to connect a client running on your desktop computer to the pvserver on the compute node.

[For more explanations, see ParaView WIKI.](https://www.paraview.org/Wiki/Reverse_connection_and_port_forwarding)


### _StarCCM+ with hardware rendering_

    vglrun starccm+ -clientldpreload /usr/lib64/libvglfaker.so -graphics native -rgpu auto  -power -fabric TCP -podkey $YOURPODKEY ...

## _In-situ visualization (in preparation)_

---

In-situ visualization creates the visualization during the simulation instead of during the postprocesssing phase. The simulation code needs to be connected to in-situ visualization libraries. e.g. Catalyst (ParaView), LibSim (VisIt) and Ascent.

The following are installed on our cluster:

-   [Catalyst](https://www.paraview.org/insitu/)
-   [Ascent](https://github.com/Alpine-DAV/ascent)
-   LibSim
-   SENSEI

Ascent on all nodes:

```bash
module load rocky8-spack
module load ascent
```

Catalyst on all nodes:

```bash
module load rocky8-spack
module load libcatalyst/2.0.0-gcc-10.3.0-openblas-bp26
```

[Catalyst can be used within OpenFOAM and NEK5000 simulations.](https://github.com/KTH-Nek5000/InSituPackage) 
