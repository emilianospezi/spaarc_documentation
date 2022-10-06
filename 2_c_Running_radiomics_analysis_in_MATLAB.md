# SPAARC in Matlab: Running demo

### [Back to Contents](README.md)

Demo files can be found in this repository in demos/matlab 

Running spaarc requires a valid licence to also be on the matlab path 
(as discussed in [Matlab set up documentation](1_b_SPAARC_MATLAB_installation_and_setup.md)).

# Using CERR planC files

We also assume you have installed CERR already on the matlab path. 

### 1. Assuming data has been imported using CERR into a planC format. 
- E.g. see the .mat files in demos/matlab/Data/Example_CTs

### 2. Open the demo file 
> run_featureExtraction_using_json_config.m

### 3. Use function trialBuildFileListGUI to build filelist and pathname 
- load this file into Matlab
- In the Demo this is called _FileLocation.mat_

### 4. Ensure associated configuration file is read
- In this example the configuration file is called exampleConfig.json
```matlab
inputP = read_spaarc_json_config('exampleConfig.json');
```

### 5. Set name of structure that is being analysed
- In demo files the structure is called GTV_Mass_CT

```matlab
inputP.struct_name  = 'GTV_Mass_CT';
```

### 5. Run the demo file to begin feature extraction

# Filtering 

In Matlab, we can do batch filtering by adding another feature family to the feature_families tag in the 
json file. 

| feature_families tag  | full name             |
|:----------------------|:----------------------|
| LoG                   | Laplacian of Gaussian |
| Laws                  | Law's Filters         |
 | sep_wavelets          | Separable wavelets    | 


Examples of the settings used are found in:

> batchFilteringSpaarcConfig.json
 

which is located within matlab spaarc directory.
