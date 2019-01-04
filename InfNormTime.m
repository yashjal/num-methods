function time  = InfNormTime( A )
tic
B = abs(A);
x = sum(B,2);
max(transpose(x));
time = toc;

end

