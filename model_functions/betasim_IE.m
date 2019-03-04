function vars=betasim_IE(p,t,paux)
% vars=betasim_IE(p,t,paux) performs simulation and returns all the variables
% exported by the Simulink model betavars.mdl. It includes the incretin
% effect.
%
% The argument p is the model parameter, t a vector with the simulation
% times.
%
% paux.t: time for calcium and glucose (column)
% paux.c: calcium (column)
% paux.g: glucose (column)
% paux.k: Kincr (column)

% Simulink options
opts=simget('betavars');
opts.SrcWorkspace='current';
opts.OutputPoints='specified';

% delay parameters
alphaP=p(13); %#ok<*NASGU>
delayP=p(14);
delayC=p(15);
alphaC=p(16);

% initial values
Ca0=fCa(p,paux.c(1,1));
CaGlu0=fCaGlu(p,paux.c(1,1),paux.g(1,1));

% inputs to model ports
ports=[paux.t paux.g paux.c fCaGlu_IE(p,paux.c,paux.g,paux.k) fCa(p,paux.c)];

% simulate
[~,~,vars]=sim('betavars',t,opts,ports);

% transpose with results in rows
vars=vars';
end