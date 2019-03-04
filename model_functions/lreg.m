function p=lreg(x,y)
% p=lreg(x,y) minimal linear regression function: p(1)=slope,
% p(2)=intercept

% clear data from nans
nans=isnan(x)|isnan(y);
x=x(~nans);
y=y(~nans);
x=x(:);
y=y(:);

% Find the least squares solution (from regress of stats toolbox)
X=[x ones(size(x))];
[Q, R]=qr(X,0);
p = R\(Q'*y);
