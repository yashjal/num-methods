%Yash Jalan
function [ vals2 ] = bisection2( f, a0, b0, maxit)
% applies the 1D zero finding bisection method

format long e;

vals2 = zeros(maxit, 1);

mid = (a0 + b0)/2;
k = 1;

for i = 1:maxit
    vals2(i,1) = mid;
    if f(a0)*f(mid) < 0
        b0 = mid;
        
    else
        a0 = mid;
    end
    
    mid = (a0 + b0) / 2;
    k = k + 1;
end

end
