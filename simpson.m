function out = simpson( f, a, b, m )

h = (b-a)/(2*m);
out = 0;
x = zeros(2*m+1,1);

for i=1:(2*m+1)
    x(i,1) = a+(i-1)*h;
    if (((i-1) == 0) || ((i-1) == 2*m))
        out = out + f(x(i,1));
    elseif (mod(i,2) == 0)
        out = out + 4*f(x(i,1));
    else
        out = out + 2*f(x(i,1));
    end
end
        
out = out*(h/3);

end