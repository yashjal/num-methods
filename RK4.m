function [ vals ] = RK4( t0, h, f, iter,y0 )
% Runge-Kutte 4 method
vals = zeros(iter+1,2);
k=0;
vals(1,2) = y0;
while (k<(iter+1))
    vals(k+1,1)= t0 + k*h;
    if k>0
        s1 = f(vals(k,1),vals(k,2));
        t_half = vals(k,1) + 0.5*h;
        s2 = f(t_half,vals(k,2)+0.5*h*s1);
        s3 = f(t_half,vals(k,2)+0.5*h*s2);
        s4 = f(vals(k+1,1),vals(k,2)+h*s3);
        vals(k+1,2)= vals(k,2)+(h*(s1+2*s2+2*s3+s4))/6;
    end
    k = k+1;
end

end

