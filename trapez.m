function out = trapez( f, a, b, m )

h = (b-a)/m;
out = 0;
x = zeros(m+1,1);

for i=1:(m+1)
    x(i,1) = a+(i-1)*h;
    if (((i-1) == 0) || ((i-1) == m))
        out = out + 0.5*f(x(i,1));
    else
        out = out + f(x(i,1));
    end
end
        
out = out*h;

end

