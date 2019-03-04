function cpep=cpepsim(pcp,tsim,data)



% model inputs
infusion=data;
bolus=0;% bolus at time 0

t=tsim; 
% simulink model name             
model='cpep_model';                    

% initialization of model, pinit, and paux_c1 and paux_c1a2
paux_val=pauxinit_cpep_model(pcp,infusion,bolus,1:2,model);
    
% paux_c1=pauxinit_model(infusion,bolus,1,model);
p=[];

% simulation with vancauter parameters 
y=simsim_n(p,t,paux_val);
c1=y(1,:);
a2=y(2,:); 
cpep.t=t;
cpep.v=c1;
    
