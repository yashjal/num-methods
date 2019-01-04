f = @(x) x^(0.5);
exact = 7.4536;
err_trap = zeros(1,20);
err_sim = zeros(1,20);
N_val = zeros(1,20);
i=1;
for N=1:25:480
    if N == 1
        x = 0:1/N:5;
    else
        x = 0:1/(N-1):5;
    end
    est1 = trapez(f,x);
    est2 = simpson(f,x);
    err1 = abs(exact-est1);
    err2 = abs(exact-est2);
    err_trap(1,i) = err1;
    err_sim(1,i) = err2;
    N_val(1,i) = N;
    i=i+1;
end
    
    