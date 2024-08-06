<span style="color:red">not changed to rocky yet</span>

# Visualization

<br>
<hr style="margin-right: 0px; margin-bottom: 4px; margin-left: 0px; margin-top: -24px; border:2px solid  #d9d9d9 "></hr>
<hr style="margin: 4px 0px; border:1px solid  #d9d9d9 "></hr>

## Accessing the visualization system

---

The visualization computer `viz.hpc.taltech.ee` can be accessed by SSH from within the university network, from FortiVPN or using a jump-host:

    ssh viz.hpc.taltech.ee
    ssh viz -J base.hpc.taltech.ee

The access to **viz** is limited to using ssh-keys, no password login. Therefore the ssh-key must be copied to **base**. More can be found [here](https://hpc.pages.taltech.ee/user-guides/#getting-ssh-keys-to-work).

The **base** home directories are shared with **viz**.

<br>
<hr style="margin-right: 0px; margin-bottom: 4px; margin-left: 0px; margin-top: -24px; border:2px solid  #d9d9d9 "></hr>
<hr style="margin: 4px 0px; border:1px solid  #d9d9d9 "></hr>

## Using GUI software remotely

---
 
<div class="simple1">
The visualization software can be executed directly on the visualization node of the cluster, thus removing the need to copy the data for the analysis. There are several possibilities to use graphical programs remotely on a Linux/Unix server:

-    remote X, forwarding through SSH
-    [X2GO](visualization/x2go.md)
-    [Xpra](visualization/xpra.md)
-    [VNC](visualization/vnc.md)
-    RDP (currently not installed)
-    [VirtualGL](visualization/VirtualGL.md)
</div>
<br>

At least one of these methods should work for any user, which one depends on the configuration of the client computer (your desktop/laptop).

<div class="simple1">
These methods also have different requirements what client software needs to be installed on your computer:

-    SSH, e.g. PuTTY on Windows (essential)
-    X-server (essential for X-forwarding, Xpra, VirtualGL; not needed for X2GO, VNC)(installed by default on Linux; for Windows [Xming](https://sourceforge.net/projects/xming/) or [VcXsrv](https://sourceforge.net/projects/vcxsrv/)) for MAC ([XQuarz](https://www.xquartz.org/)) 
-    [Xpra](https://xpra.org/)
-    [TightVNCViewer](https://www.tightvnc.com/download.php)
-    [VirtualGL](https://virtualgl.org/)
</div>
<br>

SSH is essential on all platforms, an X-server and VirtualGL are highly recommended and Xpra and VNC are recommended to have on the client computer.


### _Window manager or Desktop envirionment for remote use_

The default window manager for VNC and X2GO is fvwm2, a configurable, lightweight and fast window manager.

You can get a context menu by clicking on the background (left, middle and right give different menues). By the way, a nice X11 feature is easy copy-and-paste, marking with the left mouse button automatically puts the selection into a copy buffer and clicking the middle mouse button inters at the current mouse cursor position. No annoying ctrl+c, ctrl+v necessary.

Within VNC or X2GO you are running a complete desktop session. Typical modern desktop environments require a lot of memory just for the desktop environment! For this reason only resource-efficient window managers like `jwm` `fvwm2` `awesome` `lwm` `fluxbox` `blackbox` `xmonad` `tritium` are installed.

Software to be automatically started can be configured in `.xsession` (or `.vnc/xstartup` or `.xsessionrc-x2go`).


### _Available Visualization software on compute nodes_

-   ParaView 
-   VisIt 
<!-- -   COVISE -->
-   Py-MayaVi 
<!-- -   OpenDX -->
-   RasMol 
-   VESPA
<!-- -   VAPOR -->
<br>

to use GPU run `vglrun paraview`


### _Available Visualization software on **viz**_

-   ParaView (native install, just run `paraview`, to use GPU run `vglrun paraview`)
-   VisIt (run `/usr/local/VisIt/bin/visit`)
-   COVISE (run `/usr/local/covise/bin/covise`)
-   MayaVi (native install, just run `mayavi2`)
-   OpenDX (native install, just run `dx`)
-   RasMol (native install, just run `rasmol` or `rasmol-gtk`)
<br>


### _In-situ visualization (in preparation)_

<div class="simple1">
In-situ visualization creates the visualization during the simulation instead of during the postprocesssing phase. The simulation code needs to be connected to in-situ visualization libraries. e.g. Catalyst (ParaView), LibSim (VisIt) and Ascent.

The following are installed on our cluster

-   (Catalyst)[https://www.paraview.org/hpc-insitu/]
-   (Ascent)[https://github.com/Alpine-DAV/ascent] 
-   LibSim
-   SENSEI

Ascent on all nodes (except amp*, viz)

    module load rocky8-spack
    module load ascent

Ascent on **amp** (CUDA accelerated)

    module load amp-spack/0.19.0
    module load ascent/0.8.0-gcc-9.3.0-txjp

Catalyst on **amp** (OSMESA)

    module load amp-spack/0.19.0
    module load catalyst/5.6.0-gcc-9.3.0-python-3.9.13-q64g 

Catalyst can be used within OpenFOAM and (NEK5000)[https://github.com/KTH-Nek5000/InSituPackage] simulations.

</div>
<br>
<br>


