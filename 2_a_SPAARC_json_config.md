# SPAARC json configuration file

### [Back to Contents](README.md)



Settings for feature extraction are defined in a configuration file in _json_ format. All runs must have an accompanying 
configuration file. 

Config file must comply with json standard. 
[Read more](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/JSON#json_structure).

A JSON object contains zero, one, or more key-value pairs. Json objects can be nested. We make use of this to group 
sub- settings appropriately. In SPAARC, these settings are converted into Matlab structs or Python dictionaries. 



### Example:

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
Feature families can be removed if not desired.

### Options

All feature extraction follows [IBSI guidelines](https://arxiv.org/pdf/1612.07003.pdf).



| feature_families tag | full name                                  |
|:---------------------|:-------------------------------------------|
| morph                | Morphology                                 |
| stats                | Statistical                                |
| ih                   | Intensity histogram                        |
| ivh                  | Intensity volume histogram                 |
| glcm                 | Grey level co-occurrence matrix            |
| glrlm                | Grey level run length matrix               |
| glszm                | Grey level size zone matrix                |
| gldzm                | Grey level distance zone matrix            |
| ngldm                | Neighbourhood grey level dependence matrix |
| ngtdm                | Neighbourhood grey tone difference matrix  |



<br>

- **"feature_families"**
  - Feature families (tag) to extract.



- **"re_segmentation_range"** 
  - Set resegmentation range. For example [-200 200] HU would be {"min": -200, "max": 200}.
  - If no segmentation is desired, set max and min to an **empty** string, i.e. {"min": "", "max": ""}
  
- **"re_segmentation_outlier_filtering"** 
  - If you want to apply outlier filtering using standard deviation from mean (e.g. 3sigma):
    - set **"apply"** to _true_ and decide **"sigma"** (3 is recommended)

- **"bin_method"**
  - Set binning method for discretization of image intensities. 
    - Valid options: Either a Fixed bin size (**FBS**) or Fixed Bin Number (**FBN**)
>  NOTE: A common reason for error is inappropriate binning. 
>  E.g. trying to bin PET that is in BQML into a small fixed bin
> size will cause large, sparce texture matrices and result in memory error.
> 

- **"texture_parameters"** 
  - For families glcm and glrlm, there is a texture matrix for unique direction (i.e. 13 in 3D). These matrices 
can be merged before calculating features, or alternatively, features can be calculated from each matrix and averaged. 
A "distance" setting determines the number of voxel steps the texture  algorithm takes. (i.e. 1 means neighbours are 
1 voxel in a given direction)
    - **"aggregation"**
    
      - valid options: "both", "averaged", or "merged"

  - for ngldm, as well as **"distance"**, an **"alpha"** setting threshold is required (default of 0 recommended) 


### Further options

- **"interpolation"**
  - to resample the image to a new voxel size before feature extraction, an interpolation can be performed. 
  - If no interpolation is desired, simply delete the whole interpolation field line.

  - required 3 subfields:

    - **"new_voxel_spacing"** - e.g. resample to 2 x 2 x 2 mm voxel spacing, set to [2, 2, 2]
    - **"method"** - either "linear" or "spline"
    - **"rounding_after_interp"** - Recommended for CT scans to return to HU after interp. 
  Set to false for other modalities.

```json
{
  "interpolation": {"new_voxel_spacing" : [2, 2, 2], "method":  "linear", "rounding_after_interp":  true},
  
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






<br><br><br><br><br><br><br><br>