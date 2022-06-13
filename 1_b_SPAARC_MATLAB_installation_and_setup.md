# SPAARC Matlab: Installation & Setup

### [Back to Contents](README.md)

## Requirements

- Recommended: Matlab 2021 a or b

  - Toolboxes Used:

    - Image Processing Toolbox
    - Statistics and Machine Learning Toolbox
    - Signal Processing Toolbox
    - Symbolic Math Toolbox

    
- For DICOM import SPAARC requires CERR (https://github.com/cerr/CERR)

- SPAARC Matlab source code (Downloaded from appropriate Gitlab Repository.)

## Steps 

1. Install Matlab as required above. 
2. Download CERR and ensure all folders and files are on the Matlab path e.g.
    ```MATLAB
    addpath(genpath('/<PATH>/<TO>/CERR'))
    ```
3. Download SPAARC repository and ensure it is in the Matlab Path e.g.:
    ```MATLAB
    addpath(genpath('/<PATH>/<TO>/spaarc'))
    ```

4. Ensure you have been provided with a valid SPAARC licence (Matlab) and add it to the Matlab path as well. 

That is all!