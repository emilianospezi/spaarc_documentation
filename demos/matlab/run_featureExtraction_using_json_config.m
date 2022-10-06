% Feature Extraction script using json config file 
% -------------------------------------------------------------------------
clear; 
% RUN trialBuildFileListGUI to build filelist and pathname (then load them)
load('fileLocation.mat','pathname','filelist');

% Collect settings w/ json config (same config as python version of spaarc)
inputP = read_spaarc_json_config('exampleConfig.json');

% Additional inputs: 
inputP.metric                   = 'RadiomicAnalysis';
inputP.savedir                  = fullfile('./Results');
inputP.options.saveROIs         = true;
inputP.prefix                   = 'Demo_with_json';

% Name of ROI Structure to analyse 
inputP.struct_name              = 'GTV_Mass_CT';

% Run Analysis
% -------------------------------------------------------------------------
run_SPAARC(pathname,filelist,inputP);
% -------------------------------------------------------------------------



