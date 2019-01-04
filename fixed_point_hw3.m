x =[1;1;1;1];
eps=0.5;
for i=1:25
    x1 = x;
    x = (A'*D(A,b,x,eps)*A)\(A'*D(A,b,x,eps)*b);
    fprintf('Iteration %4d: %2.14f\n', i, norm(x));
    if (norm(x-x1)<=1e-6)
        fprintf('Converged after %d iterations.\n', i)
        break;
    end
end
