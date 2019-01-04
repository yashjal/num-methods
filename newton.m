%Yash Jalan
function [ vals ] = newton( f, df, x, maxit, ftol, xsol )
% Applies the Newton Method for 1-d zero finding

format long e;
vals = zeros(maxit,5);
k = 0;

while (k < maxit) && (f(x) ~= 0) && (abs(f(x)) >= ftol)
    
    if k == 0
        vals(k+1,1) = k;
        vals(k+1,2) = x;
        vals(k+1,3) = f(x);
        vals(k+1,4) = df(x);
        vals(k+1,5) = x - xsol;
    end
    
    x = x - (f(x)/df(x));
    k = k + 1;
    if k > 0
        vals(k+1,1) = k;
        vals(k+1,2) = x;
        vals(k+1,3) = f(x);
        vals(k+1,4) = df(x);
        vals(k+1,5) = x - xsol;
    end
    
end

end

