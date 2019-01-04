function [ vals ] = f_euler1(t0, h, f, iter,y0,g)
% forward Euler method
vals = zeros(iter+1,4);
k=0;
vals(1,2) = y0;
while (k<(iter+1))
    vals(k+1,1)= t0 + k*h;
    vals(k+1,3)= g(vals(k+1,1));
    if k>0
        vals(k+1,2)= vals(k,2)+h*f(vals(k,2));
    end
    vals(k+1,4) = vals(k+1,3) - vals(k+1,2);
    k = k+1;
end

end
