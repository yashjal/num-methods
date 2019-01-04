function [y,lambda] = myPower(A,x0)
    y = x0;
    lambda = y'*A*y;
    lambda1 = lambda+1; %dummy value
    while abs(lambda-lambda1) > 1e-12
        lambda1 = lambda;
        y = A*y;
        y = y/norm(y);
        lambda = y'*A*y;
    end
end

%{
[y l1] = myPower(L,[1;0;0;0])
y =
   0.721010121753082
   0.240336707250863
   0.540757591311927
   0.360505060874244
l1 =
   0.999999999998824
%}
