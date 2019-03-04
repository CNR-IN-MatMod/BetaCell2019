function y=simsim_n(p,t,paux)
% y=simsim(p,t,paux) simulates a Simulink model in the standard model form,
% as with odesim and abcdsim, but in contrast to odesim and abcdsim there
% is no standard simulation environment and treatment of inputs.
%
% The parameters p and paux are made visible to the Simulink model through
% the workspace of this function. Therefore, the Simulink blocks can
% contain references to p and paux.
%
% The parameter paux must contain the field 'model' containing the name of
% the Simulink model (the .mdl file) and the field 'init' containing a
% handle to an initialization function as described below. If the latter
% field is empty no initialization function is executed.
%
% The initialization function has the format:
%
%    [paux,ts,iout]=init(p,t,paux)
%
% This function is supposed to perform the following tasks:
%  - prepare paux for the Simulink model by adding extra fields if
%    necessary (e.g. the initial state);
%  - provide a simulation time ts which is a superset of the time vector t,
%    which may be necessary if e.g. the simulation must begin before the
%    first time instant in t;
%  - provide a logical index iout so that ts(tout) is the original t.
%
% The initialization function is typically necessary when the initial state
% refers to a time which precedes the first time instant in t. In this
% case, the initial state time must be added to the simulation time ts and
% the vector tout set to exclude this extra time point. If this is not
% done, the initial state is incorrectly set at the first time in t.
%
% Example of intitialization function:
%
%    function [paux,ts,iout]=minmodinit(p,t,paux)
%
%    % prepare paux
%    if isempty(paux.gb)
%        paux.gb=p(end);
%    end
%
%    % add 0 to simulation time (must be t>0)
%    ts=[0 t];
%
%    % set index vector so that t=ts(iout)
%    iout=ts>0;
%
% IMPORTANT: Simulink starts the simulation at t(1) and the initial state
% is set at this time. If the simulation environment requires that the
% simulation is started earlier, this must be handled by setting an
% appropriate simulation time. Note that with Simulink it is difficult to
% set the initial state at a specified time. Therefore, it is problematic
% to have a constant input from t=-10 and a state jump at 0.
%
% In Simulink, piecewise constant or linear inputs can be applied by
% including a "From Workspace" block set to a field of paux containing the
% standard  multiple column matrix used to define a lookup table. Impulsive
% inputs are difficult to apply, except as an intial state.
%
% Simulink options must be set using the Configuration parameters window of
% the Simulink model and cannot be changed with this function. Outputs to
% the workspace and possibly warnings should be disabled.
%
% As with odesim and abcdsim, the result of a simulation can be obtained in
% timeval format using the function fullsim. However, for Simulink models
% fullsim does not handle inputs.

% set model options for passing parameters and output times
opts=simget(paux.model);
opts.SrcWorkspace='current';
opts.OutputPoints='specified';

% call sim and transpose output (y must be row)
if isempty(paux.init)
    [t,x,y]=sim(paux.model,t,opts);
    y=y(:,paux.n)';
else
    % apply initialization function first
    [paux,t,iout]=feval(paux.init,p,t,paux);
    [t,x,y]=sim(paux.model,t,opts);
    y=y(iout,paux.n)';
end
