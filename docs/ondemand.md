# OnDemand

OnDemand available at [ondemand.hpc.taltech.ee](https://ondemand.hpc.taltech.ee), is a graphical user interface that allows access to HPC via a web browser. Within the OnDemand environment users can:

- **run Desktop session** ( -> [TalTech HPC Desktop](/ondemand.html#ondemand-desktop))

    ![ondemand-7](/visualization/ondemand-7.png){: style="width:65%; height:!65%;"}

- **access to HPC files** ( -> Home directory)

- **upload, download and delete files** ( -> Home directory)

    ![ondemand-8](/visualization/ondemand-8.png){: style="width:70%; height:!70%;"}

- **check nodes load**

    ![ondemand-9](/visualization/ondemand-9.png){: style="width:55%; height:!55%;"} 

- **monitor and cancel own jobs** 

    ![ondemand-10](/visualization/ondemand-10.png){: style="width:65%; height:!65%;"} 

- **check own filesystem quotas**

    ![ondemand-11](/visualization/ondemand-11.png){: style="width:65%; height:!65%;"} 

- **check own bills**

    ![ondemand-12](/visualization/ondemand-12.png){: style="width:65%; height:!65%;"} 

- **run interactive applications like Jupyter**

    ![ondemand-13](/visualization/ondemand-13.png){: style="width:65%; height:!65%;"} 


The default desktop environment is xfce, which is configurable, lightweight and fast.

The menu only contain very few programs from the operating system. However, **all installed software can be open an XTerminal** using the module system as you would from the command-line. 

## Job Composer

The typical workflow with the job composer is the following.

1. Navigate to the job templates in the Job Composer by ondemand.hpc.taltech.ee > Utilities > Job Composer > Templates or directly via [this URL](https://ondemand.hpc.taltech.ee/pun/sys/myjobs/workflows/new)
2. Select the software template you intend to use; if there is no template for the software you wish to use, let us know! ![Open OnDemand - Job Composer - Templates - Octave](/visualization/ondemand-jobs-1.png){: style="width:65%; height:!65%;"} 
3. Optionally visit the additional documentation, then create a new job with that template ![Open OnDemand - Job Composer - Templates - Octave - New](/visualization/ondemand-jobs-2.png){: style="width:65%; height:!65%;"} 
4. See the newly created, yet unsubmitted job and edit it ![Open OnDemand - Job Composer - Templates - Octave - New - Editor](/visualization/ondemand-jobs-3.png){: style="width:65%; height:!65%;"} 
5. Make your own desired job by editing the template, then go back to the previous tab; make sure to specify the correct account; if you have access to none, remove the line or use the default `user_<username>` ![Open OnDemand - Job Composer - Templates - Octave - New - Editor - Save](/visualization/ondemand-jobs-4.png){: style="width:65%; height:!65%;"} 
6. Open the directory to create other files that you might need before running the job, such as configurations and input ![Open OnDemand - Job Composer - Job](/visualization/ondemand-jobs-5.png){: style="width:65%; height:!65%;"} 
7. Once created the file with the appropriate name, edit it; repeat for all files you need, then go back to the previous tab ![Open OnDemand - Files - Editor - New](/visualization/ondemand-jobs-7.png){: style="width:65%; height:!65%;"} ![Open OnDemand - Files - Editor - New](/visualization/ondemand-jobs-8.png){: style="width:65%; height:!65%;"} 
8. Submit your job; you will be able to follow its progress from the small status badge or from the Active Jobs utility ![Open OnDemand - Job Composer - Job - Submit](/visualization/ondemand-jobs-9.png){: style="width:65%; height:!65%;"} 
9. Once the job is over, in the same directory that you edited before, you will find the output (typically both stderr and stdout) in the specified file (typically `*.out`) ![Open OnDemand - Files - Editor - View](/visualization/ondemand-jobs-10.png){: style="width:65%; height:!65%;"} 

## OnDemand Desktop

1. Choose "TalTech HPC Desktop".

    ![ondemand-7](/visualization/ondemand-7.png){: style="width:65%; height:!65%;"}

2. Set up and launch an interactive desktop (**time, number and type of cores (CPU=green, GPU), memory**). 1 core and 1 GB of memory is usually enough if no calculations are planned.

    ***NB!*** _Check your account._

    ![ondemand-2](/visualization/ondemand-2.png){: style="width:65%; height:!65%;"}

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

6. Load environment and program needed and start vizualization. More detailed instructions on environment and program loading are given below.

    ![ondemand-6](/visualization/ondemand-6.png){: style="width:55%; height:!55%;"}

    [More information about using onDemand can be found at visualization page.](/visualization.html)

7. In the end of session do not forget to disconnect.

    ![ondemand-14](/visualization/ondemand-14.png){: style="width:55%; height:!55%;"}

## OnDemand Jupyter

There are two ways to run Jupyter on OnDemand:

1. **Using Singularity containers**  
    - Provides a stable, pre-configured environment for Jupyter.
    - You can use HPC-provided containers, but cannot install additional packages yourself. If you need extra packages, contact the HPC staff.
    - Alternatively, you can build and use your own Singularity containers for more customization. See our [Singularity documentation](/singularity.html#obtaining-and-building-singularity-containers) for details.

2. **Using the micromamba package manager**  
    - Offers flexibility to create and manage your own Python environments.
    - You can install and update packages as needed, including JupyterLab and other Python libraries.
    - This method may require more setup and maintenance, and environments are user-managed.
   
### OnDemand Jupyter using containers

![ondemand-jupyter-syscontainer](/visualization/ondemand-jupyter-syscontainer.png){: style="width:65%; height:!65%;"}

1. You can use HPC provided pre-built Singularity containers
    - Using this, you can not install additional packages yourself. But you are encouraged to ask the staff to add packages you need.
2. Using your own Singularity containers.
    - Follow our documentation on [obtaining and building Singularity containers](/singularity.html#obtaining-and-building-singularity-containers) to find out how.

### OnDemand Jupyter using the micromamba package manager

1. Before using this on the web interface, you must configure the environment by logging in to base using command line (you may do this by using the [OnDemand Desktop app](/ondemand.html#ondemand-desktop) or [logging in via SSH](/quickstart.html#accessing-the-cluster)).
2. From there load the micromamba module: `module load rocky8 micromamba`
3. Then, install Jupyter Lab: `micromamba install jupyterlab`
4. Navigate back to OnDemand Jupyter app on your browser. Choose `User` as the `JupyterLab Provider` option, and set `micromamba activate base` as the `Activation command`:

![ondemand-jupyter-micromamba](/visualization/ondemand-jupyter-micromamba.png){: style="width:65%; height:!65%;"}

**Note on installing pip packages using Jupyter with micromamba:**  
When working inside a Jupyter notebook, use `%pip` (not `!pip`) to install Python packages. The `%pip` magic function ensures packages are installed in the correct environment for your notebook.
