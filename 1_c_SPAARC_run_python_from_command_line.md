# SPAARC python: Run batch analysis with Anaconda enviroment

### [Back to Contents](README.md)


## Pre-requisites 

- Download and install [Anaconda](https://www.anaconda.com/products/distribution).
- Download spaarcpython directory.


## Create a new python environment to run SPAARC

**1. After installing Anaconda, create a new conda environment.** 

In this example the new environment is named spaarc_env

In the terminal (mac) or Anaconda Prompt (Windows) type:  

```commandline
conda create --name spaarc_env python=3.10. 
```


**2. Activate new conda environment** 

```commandline
conda activate spaarc_env
```

**3. Navigate to spaarcpython source directory**

```commandline
cd <path>/<to>/spaarcpython
```


**4. In the **activated** conda environment:
Install pip, then use pip to install requirements.txt for spaarcpython.** 


```commandline
conda install pip       
```
```commandline
pip install -r requirements.txt
```

**5. Run pytest to check code **


## Run batch analysis 

Remember, you need to activate the above environment and navigate to the spaarcpython directory to run batch processing.

**1. ensure**














