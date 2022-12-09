# Filtering use Spaarc Matlab 

To participate in IBSI2, the standardised approach to filtering was added to the MATLAB version of 
spaarc first. In time this should be ported/re-implemented to the python version.

The IBSI2 reference manual is available on arXiv: https://arxiv.org/abs/2006.05470

The required options used for each filter are hopefully named in a way that makes sense for the required options
to run the filter tests described in the above manual.

See the IBSI2 feature extraction scripts to get an idea of the different filter settings. 

> NOTE EACH FILTER HAS A DIFFERENT SET OF REQUIRED OPTIONS

## Adding a Pre-filter Vs Running Batch filtering

- There are two ways to run filters. You can add a SINGLE filter at the start of the pipeline
(called a prefilter).


### Prefilter 
This is done by updating the inputP with an options.preFilter struct. E.g.:

```MATLAB
% Prefilter the image prior to feature extraction (in this case LoG filter)
% Mean example
inputP.options.preFilter.apply   = 'yes';
inputP.options.preFilter.Type    = 'LoG';
inputP.options.preFilter.dim     = '3D';
inputP.options.preFilter.padding = 'symmetric';
inputP.options.preFilter.sigcutoff = 4;
inputP.options.preFilter.sigMM     = 1.5;
```

Note that this filter is applied to the image and then processing continues as normal.
The filtered image is then just treated as if it was the original image, i.e. the feature names do not indicate
that a filter has been used. 

Notably, the mean filter can only be added as a prefilter (as it is very simple and just used for noise reduction)
as it doen't make sense as a "filter family".

### Batch
- Alternatively, if you want to do batch filtering (apply many filters and collect the statistical results) then you
need to specify the filter family in the "feature_families" component of the config. 

Here we add LoG based filter features:

```json
{
  "feature_families": ["morph","stats", "ih", "glcm", "glrlm", "glszm", "gldzm",
                       "ngldm", "ngtdm", "LoG"],

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

By default, the settings use for  batchfiltering are in: _batchFilteringSpaarcConfig.json_. You can easily view this 
file by typing:

```matlab
edit batchFilteringSpaarcConfig.json
```

in matlab command window if spaarc is on your path. 


If you don't want to use these default settings, you need to point spaarc to the right config file as part of your
inputP setup (see details on how to run spaarc matlab):

```matlab
inputP.options.batchFilteringConfigfile = <YourBatchFilteringConfigfile.json>
```

It is recommended to just put the settings in your original config file. E.g.
```json
{
  "feature_families": ["morph","stats", "ih", "glcm", "glrlm", "glszm", "gldzm",
                       "ngldm", "ngtdm", "LoG"],

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
  },
    "LoG": {
      "dim": "3D",
      "padding": "symmetric",
      "sigcutoff": 4,
      "sigMM": [0.5, 1, 2, 3, 4, 5]
  }
}
```


### Reminder if you do this, you need point to the file using 
> **inputP.options.batchFilteringConfigfile** 