function paux=pauxinit_model2(pcp,inf,bol,n,model_name)

paux.init=[];
paux.n=n;
paux.model=model_name;
paux.infusion=[inf.t' inf.v'];
paux.bolus=bol;
paux.A=pcp(1);
paux.B=pcp(2);
paux.a=pcp(3);
paux.b=pcp(4);

%cp_ss=cp(1);
%paux.ISRb=cp_ss/(paux.A*(1/paux.a)+paux.B*(1/paux.b));

paux.ISRb=inf.v(1);
   



