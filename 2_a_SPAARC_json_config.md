# SPAARC json configuration file

### [Back to Contents](README.md)


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