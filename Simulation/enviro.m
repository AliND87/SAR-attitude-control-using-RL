%% SET UP ENVIRONMENT
% Speedup options
useFastRestart = true;
useGPU = true;
useParallel = true;

% Create the observation info
numObs = 7;
observationInfo = rlNumericSpec([numObs 1]);
observationInfo.Name = 'observations';

% create the action info
numAct = 1;
actionInfo = rlNumericSpec([numAct 1]);
actionInfo.Name = 'optimized gains';

% Environment
mdl = 'SAR_model';
load_system(mdl);
blk = [mdl,'/RL Agent'];
env = rlSimulinkEnv(mdl,blk,observationInfo,actionInfo);
%env.ResetFcn = @(in)walkerResetFcn(in,upper_leg_length/100,lower_leg_length/100,h/100,'2D');
%if ~useFastRestart
%  env.UseFastRestart = 'off';
%end
%agent option

