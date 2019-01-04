f = @(x)(1/x+2*log(x)-2);
df = @(x)(-1/x^2+2/x);
x = 5;
for i=1:15
    x = x-f(x)/df(x);
    fprintf('Iteration %4d: %2.14f\n', i, x);
    if (abs(f(x))<1e-16)
        fprintf('Converged after %d iterations.\n', i)
        break;
    end
end