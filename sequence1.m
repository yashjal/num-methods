%Yash Jalan
function [ vals ] = sequence1( n )
% computes the first n elements of this sequence
format long e;
vals = zeros(n+1, 2);
vals(1,1) = 0;
vals(1,2) = 0.94^(2^0);
for k = 1:n
    vals(k+1,1) = k;
    vals(k+1,2) = (0.94)^(2^k);
end
end

