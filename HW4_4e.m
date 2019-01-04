x =[1;1;2;1;1;1;1;5;1;1;1;1;1;1;1;2;0;1;1;1;1;1];
eps=10e-10;
gam=10e-4;
for i=1:10
    x = ((A'*A)+(gam*D1(x,eps)))\(A'*F);
    fprintf('Iteration %4d: %2.14f\n', i, norm(x));
end