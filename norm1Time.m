function time = norm1Time ( A )
tic
B = abs(A);
x = sum(B,1);
max(x);
time = toc;

end

