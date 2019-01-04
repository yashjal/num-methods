f = @(x) x^(0.5);
exact = 10*5^(0.5)/3;
err_trap = zeros(1,6);
s_val = zeros(1,6);
N_val = zeros(1,6);
h_val = zeros(1,6);
i=1;
for N=2:20:102
    x = 0:1/N:5;
    h_val(1,i) = 1/size(x,2);
    est1 = trapez(f,x);
    err1 = abs(exact-est1);
    err_trap(1,i) = err1;
    s_val(1,i) = est1;
    N_val(1,i) = N;
    i=i+1;
end