%Yash Jalan
function [ vals ] = wheeler( f, a, b, maxit, ftol, xsol )
% Applies the Wheeler method for 1d zero finding

format long e;
vals = zeros(maxit, 7);

if f(a) == 0 || f(b) == 0 || f(a)*f(b)>0
    exit;
end

mu = 1; count = 1; in = a;

while count<=maxit && f(a)~=0 && f(b)~=0 && abs(f(b))>=ftol && abs(f(a))>=ftol
    
    vals(count,1) = count-1;
    vals(count,2) = in;
    vals(count,3) = f(in);
    vals(count,4) = b;
    vals(count,5) = f(b);
    vals(count,6) = b-xsol;
    vals(count,7) = mu;
    
    a = b;
    b = a - f(a)*(a-in)/(f(a)-mu*f(in));
    
    if f(b)*f(a) < 0
        mu = 1;
        in = a;
    else
        mu = mu/2;
    end
    count = count + 1;
end

end

