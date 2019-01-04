function y = uh( h, n, f )
S1 = 0;
for i=1:n-1
    S1 = S1 + f(i.*h);
end

y = h.*f(0)./2 + h.*S1 + h.*f(4)./2;

end

