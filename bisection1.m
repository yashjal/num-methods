%Yash Jalan
function [ vals ] = bisection1( f, a0, b0, maxit, xtol)
% applies the 1D zero finding bisection method

format long e;
vals = zeros(maxit, 6);

mid = (a0 + b0)/2;
k = 1;

while (abs(a0 - b0) > xtol) && (k <= maxit) && (f(mid) ~= 0)
    vals(k,1) = k-1;
    vals(k,2) = a0;
    vals(k,3) = f(a0);
    vals(k,4) = b0;
    vals(k,5) = f(b0);
    vals(k,6) = abs(a0 - b0);
    
    if f(a0)*f(mid) < 0
        b0 = mid;
    else
        a0 = mid;
    end
    
    mid = (a0 + b0) / 2;
    k = k + 1;
end

end
