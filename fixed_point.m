function [ vals ] = fixed_point( f, x0, maxit )

format long e;
vals = zeros(maxit,3);

for i=1:maxit
    if f(x0) == x0
        vals(i,2) = x0;
        vals(i,1) = i;
        continue;
    end
    
    vals(i,1) = i;
    vals(i,2) = x0;
    vals(i,3) = f(x0);
    
    
    x0 = f(x0);
end


end

