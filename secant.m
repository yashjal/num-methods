%Yash Jalan
function [ vals ] = secant( f, xa, xb, maxit, ftol, xsol )
% Applies the secant method for 1d zero finding

format long e;
vals = zeros(maxit, 7);

k = 1;

while (k <= maxit) && (f(xa) ~= 0) && (f(xb) ~= 0) && (abs(f(xb)) >= ftol) && (abs(f(xa)) >= ftol)
    
    vals(k,1) = k;
    vals(k,2) = xa;
    vals(k,3) = f(xa);
    vals(k,4) = xb;
    vals(k,5) = f(xb);
    vals(k,6) = xb - xsol;
    vals(k,7) = abs(xb-xsol)/abs(xa-xsol);
    
    xa = xb;
    xb = xa - f(xa)*(xa - vals(k,2))/(f(xa) - vals(k,3));
    k = k + 1;
    
end

end

