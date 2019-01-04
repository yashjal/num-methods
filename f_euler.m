function [ vals ] = f_euler(t0, h, f, iter,y0)
% forward Euler method
vals = zeros(iter+1,2);
k=0;
vals(1,2) = y0;
while (k<(iter+1))
    vals(k+1,1)= t0 + k*h;
    if k>0
        vals(k+1,2)= vals(k,2)+h*f(vals(k,1),vals(k,2));
    end
    k = k+1;
end

end

