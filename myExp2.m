function vals = myExp2( x , n , exact )

y = 1;
vals = zeros(30,2);

for i=1:n
    y = y + x^i/factorial(i);
    vals(i,1) = i;
    vals(i,2) = 1/y-exact;
end

end