function [ vals ] = for_diff_approx2( f, df, x )
% calculates the error in phi 
%(forward-difference approximation of f') 
%for different values of k

vals = zeros(12,4);
count = 1;
for k = 4:15
    
    vals(count,1) = k;
    vals(count,2) = 10^(-k);
    vals(count,3) = f(x+vals(count,2)) - f(x);
    vals(count,4) = vals(count,3)/vals(count,2) - df(x);
    count = count + 1;
end

end

