# OnDemand

OnDemand available at [ondemand.hpc.taltech.ee](https://ondemand.hpc.taltech.ee), is a graphical user interface that allows access to HPC via a web browser. Within the OnDemand environment users can:

- **run Desktop session** ( -> [TalTech HPC Desktop](/ondemand.html#ondemand-desktop-cpu))

    ![ondemand-7](/visualization/ondemand-7.png){: style="width:65%; height:!65%;"}

- **access to HPC files** ( -> Home directory)

- **upload, download and delete files** ( -> Home directory)

    ![ondemand-8](/visualization/ondemand-8.png){: style="width:70%; height:!70%;"}

- **check nodes load**

    ![ondemand-9](/visualization/ondemand-9.png){: style="width:55%; height:!55%;"} 

- **monitor and cancel own jobs** 

    ![ondemand-10](/visualization/ondemand-10.png){: style="width:65%; height:!65%;"} 

- **check own quota**

    ![ondemand-11](/visualization/ondemand-11.png){: style="width:65%; height:!65%;"} 

- **check own bills**

    ![ondemand-12](/visualization/ondemand-12.png){: style="width:65%; height:!65%;"} 

- **run interactive applications like Jupyter**

    ![ondemand-13](/visualization/ondemand-13.png){: style="width:65%; height:!65%;"} 


The default desktop environment is xfce, which is configurable, lightweight and fast.

The menu only contain very few programs from the operating system. However, **all installed software can be open an XTerminal** using the module system as you would from the command-line. 

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

