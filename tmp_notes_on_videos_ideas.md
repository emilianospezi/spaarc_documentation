# List of instructional videos to record 


## Configuration file overview
-  Overview of the json config file settings.

## Python

- Install SPAARC python package to a new virtual from source code directory using conda
- Running batch analysis on nifti image+mask files from the command line 

## Matlab
- Import data to matlab with CERR (important checks and caveats)
- Running feature extraction with the json configuration file in a matlab script
- Using Image filters with SPAARC Matlab

## SPAARC MICE / Hero imaging plugin

- Best practice for structuring a MICE database for batch processing. 
- Demo video using the current plugin (will update config file approach before launch)
- Setting up a basic batch process and compute results

## MIM
- Running the extension using MIM assistant 


## Running feature extraction 

### Configuration files

Settings for feature extraction are defined in a configuration file in _json_ format. All runs must have an accompanying 
configuration file. 

Example:

```json
{
  "feature_families": ["morph","stats", "ih", "glcm", "glrlm", "glszm", "gldzm",
                       "ngldm", "ngtdm"],

  "re_segmentation_range": {"min": 0, "max": ""},
  "re_segmentation_outlier_filtering": {"apply": false, "sigma": 3},
  
  "bin_method": "FBN",
  "bin_value": 32,
  "analysis_type": "3D",

  "texture_parameters":{
    "glcm": {"aggregation": "both", "distance": 1},
    "glrlm": {"aggregation": "both", "distance": 1},
    "ngtdm": {"distance": 1},
    "ngldm": {"distance": 1, "alpha": 0}
  }
}
```

All the above fields are required in the json file for SPAARC to run. This above example can be used as a template. 

### Options


- **feature_families**
  - Feature families (tag) to extract.
- **re_segmentation_range** 
  - Set resegmentation range. For example [-200 200] HU would be {"min": -200, "max": 200}. If no
  segmentation is desired, set max and min to an EMPTY STRING, i.e. {"min": "", "max": ""}
- **re_segmentation_outlier_filtering** 
  - If you want to apply outlier filtering using stnadard deviation from mean (e.g. 3sigma), this is set here.

- **bin_method**
  - Set binning method for discretization of image intensities. 
    - Either a Fixed bin size (FBS) or Fixed Bin Number (FBN)


- TODO: Documentation to be heavily extended. Example for now. 



