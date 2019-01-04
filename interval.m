%Yash Jalan
function [vals] = interval(f,x,n)
% method to find an interval of uncertainty
% where f changes sign given a single point 
% as argument

vals = zeros(n, 5);
a = x;
b = x;
delta= 1/50;
root2 = sqrt(2);
fa = f(x);
fb = f(x);

for k=1:n
    vals(k,1) = k;
    vals(k,2) = a;
    vals(k,3) = fa;
    vals(k,4) = b;
    vals(k,5) = fb;
    
    if fa*fb <= 0
        break
    end

    if min(abs(f(a-delta)),abs(fa)) == abs(fa) || min(abs(f(b+delta)),abs(fb)) == abs(fb)
        delta = delta - 1/15;
        a = a - delta;
        b = b + delta;
        
    
    else
        delta = root2*delta;
        a = a - delta;
        b = b + delta;
      
    end
   
    fa = f(a);
    if fa*fb <= 0
        vals(k+1,1) = k+1;
        vals(k+1,2) = a;
        vals(k+1,3) = fa;
        break
    end
    fb = f(b);
    
end
end

