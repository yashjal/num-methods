x = 0.5;
%k = -0.404353773141756;
%k = 0.5;
%k = -0.5;
%k = -0.25;
k = 0.005;
f = @(x)(x*exp(x)-1);

for i=1:25
    x1 = x;
    x = x+k*f(x);
    fprintf('Iteration %4d: %2.14f\n', i, x);
    if (abs(x1-x)<1e-8)
        fprintf('Converged after %d iterations.\n', i)
        break;
    end
end
