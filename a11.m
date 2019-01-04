z = zeros(10,3);

for i=1:10
    z(i,1) = 10*2^(i-1);
    z(i,2) = abs(trapez(f,0,1,z(i,1))- (3/8));
    z(i,3) = abs(simpson(f,0,1,z(i,1)) - (3/8));
end