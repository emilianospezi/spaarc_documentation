# MICE Toolkit - Install custom environment for SPAARC  

## Overview
Set up custom environment for spaarc assuming a fresh installation of MICE toolkit. 


#### 1. Download WinPython 3.9.10.0 environment

- https://sourceforge.net/projects/winpython/files/WinPython_3.9/3.9.10.0/Winpython64-3.9.10.0.exe/download

####  2. Collect requirements.txt from spaarc python code

- Alternatively, save the following in a new file called _requirements.txt_ :

    ```
    nibabel==3.2.2
    numba==0.55.0
    numpy==1.21.5
    pandas==1.4.0
    pytest==6.2.5
    scikit_image==0.19.1
    scipy==1.7.3
    SimpleITK
    ```

####  3. Put requirements.txt into scripts folder of WinPython download

- WPy64-39100\scripts


####  4. Run _WinPython Command Prompt.exe_

- In command prompt, run:

    ```
    pip install -r requirements.txt
    ```

####  5. Point to custom python environment in MICE

- Go to Menu PLUGIN -> Python Settings -> use external interpreter and select python.exe from 
WPy64-39100\python-3.9.10.amd64 folder. 