f = @(x) 1./(1+12*x.^2);
a = -1; b = 1;
xVals = -1:0.0002:1;
clf

for n=14:20
% interpolation points
% Chebyshev
x1 = 0.5*(b-a)*cos(pi*(2*(0:n)+1)/(2*n+2));

coeffs1 = polyfit(x1,f(x1),n);
fVals1 = polyval(coeffs1,xVals);
err = max(abs(f(xVals)-fVals1))

semilogy(n,err,'ro')
hold on;
end
