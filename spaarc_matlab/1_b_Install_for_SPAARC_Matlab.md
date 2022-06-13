# Set up SPAARC Matlab


## Requirements

- Recommended: Matlab 2021 a or b

  - Toolboxes Used:

    - Image Processing Toolbox
    - Statistics and Machine Learning Toolbox
    - Signal Processing Toolbox
    - Symbolic Math Toolbox

    
- For DICOM import SPAARC requires CERR (https://github.com/cerr/CERR)

## Steps 

1. Install Matlab as required above. 
2. Download CERR and ensure all folders and files are on the Matlab path e.g.:
    ```MATLAB
    addpath(genpath('/<PATH>/<TO>/CERR'))
    ```
3. Download SPAARC repository and ensure it is in the Matlab Path e.g.:
    ```MATLAB
    addpath(genpath('/<PATH>/<TO>/spaarc'))
    ```
   
That is all!