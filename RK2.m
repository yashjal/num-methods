function [ vals ] = RK2( t0, h, f, iter,y0 )
% Runge-Kutte 2 method
vals = zeros(iter+1,2);
k=0;
vals(1,2) = y0;
while (k<(iter+1))
    vals(k+1,1)= t0 + k*h;
    if k>0
        vals(k+1,2)= vals(k,2)+h*0.5*(f(vals(k,1),vals(k,2))+f(vals(k+1,1),vals(k,2)+h*f(vals(k,1),vals(k,2))));
    end
    k = k+1;
end

end

