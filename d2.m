y = zeros(7,5);
for i=1:7
    y(i,1) = 100*2^(i-1);
    A = rand(y(i,1));
    y(i,2) = norm1Time(A);      %my function
    y(i,3) = norm1(A);          %MATLAB's norm function
    y(i,4) = InfNormTime(A);    %my function 
    y(i,5) = normInf(A);        %MATLAB's norm function
end
