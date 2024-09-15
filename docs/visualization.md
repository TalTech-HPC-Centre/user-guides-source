# Visualization


The recommended way of doing visualizations is now using the **desktop session** on (https://ondemand.hpc.taltech.ee)[https://ondemand.hpc.taltech.ee]


<br>
<hr style="margin-right: 0px; margin-bottom: 4px; margin-left: 0px; margin-top: -24px; border:2px solid  #d9d9d9 "></hr>
<hr style="margin: 4px 0px; border:1px solid  #d9d9d9 "></hr>

## OnDemand Desktop on any node (software rendering)

---

The default desktop environment is xfce, which is configurable, lightweight and fast.

xxx





### _Available Visualization software on compute nodes_

-   ParaView 
-   VisIt 
<!-- -   COVISE -->
-   Py-MayaVi 
<!-- -   OpenDX -->
-   RasMol 
-   VESTA
<!-- -   VAPOR -->
-   VMD
-   Ovito
-   Ospray (raytracer)
-   PoVray (raytracer)
<br>



<br>
<hr style="margin-right: 0px; margin-bottom: 4px; margin-left: 0px; margin-top: -24px; border:2px solid  #d9d9d9 "></hr>
<hr style="margin: 4px 0px; border:1px solid  #d9d9d9 "></hr>

## OnDemand Desktop on GPU nodes (hardware rendering)

---

Requires of course to be submitted to a GPU node and a GPU to be reserved. The nodes are configured in a way that requires EGL rendering, and therefore may require other modules to be loaded (e.g. ParaView).




<br>
<hr style="margin-right: 0px; margin-bottom: 4px; margin-left: 0px; margin-top: -24px; border:2px solid  #d9d9d9 "></hr>
<hr style="margin: 4px 0px; border:1px solid  #d9d9d9 "></hr>

## _In-situ visualization (in preparation)_

In-situ visualization creates the visualization during the simulation instead of during the postprocesssing phase. The simulation code needs to be connected to in-situ visualization libraries. e.g. Catalyst (ParaView), LibSim (VisIt) and Ascent.

The following are installed on our cluster

-   (Catalyst)[https://www.paraview.org/hpc-insitu/]
-   (Ascent)[https://github.com/Alpine-DAV/ascent]
-   LibSim
-   SENSEI

Ascent on all nodes

    module load rocky8-spack
    module load ascent

Catalyst on all nodes

    module load rocky8-spack
    module load libcatalyst/2.0.0-gcc-10.3.0-openblas-bp26

Catalyst can be used within OpenFOAM and (NEK5000)[https://github.com/KTH-Nek5000/InSituPackage] simulations.


<br>
<br>


