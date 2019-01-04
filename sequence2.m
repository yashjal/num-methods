%Yash Jalan
function [ vals ] = sequence2( n )
% Computes the first n elements of this sequence
% Computes the values for the tests of superlinear convg.
format long e;
vals = zeros(n, 4);

for k = 1:n
    vals(k, 1) = k;
    vals(k, 2) = 1/(k^k);
    if ( k == 1)
        continue;
    end
    prev = abs(vals(k-1,2));
    vals(k - 1, 3) = abs(vals(k,2))/prev;
    vals(k - 1, 4) = abs(vals(k,2) - vals(k-1,2))/prev;
    
end

end

