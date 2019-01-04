z2 = zeros(10,3);

for i=1:10
    z2(i,1) = 10*2^(i-1);
    z2(i,2) = abs(trapez(g,0,1,z2(i,1))- (2/3));
    z2(i,3) = abs(simpson(g,0,1,z2(i,1)) - (2/3));
end