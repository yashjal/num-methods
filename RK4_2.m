function [ vals ] = RK4_2(t0,h,f,g,iter,y0,y1)
% Runge-Kutte 4 method
vals = zeros(iter+1,3);
k=0;
vals(1,2) = y0;
vals(1,3) = y1;
while (k<(iter+1))
    vals(k+1,1)= t0 + k*h;
    if k>0
        s1 = f(vals(k,2),vals(k,3));
        r1 = g(vals(k,2),vals(k,3));
        s2 = f(vals(k,2)+0.5*h*s1,vals(k,3)+0.5*h*r1);
        r2 = g(vals(k,2)+0.5*h*s1,vals(k,3)+0.5*h*r1);
        s3 = f(vals(k,2)+0.5*h*s2,vals(k,3)+0.5*h*r2);
        r3 = g(vals(k,2)+0.5*h*s2,vals(k,3)+0.5*h*r2);
        s4 = f(vals(k,2)+h*s3,vals(k,3)+h*r3);
        r4 = g(vals(k,2)+h*s3,vals(k,3)+h*r3);
        vals(k+1,2)= vals(k,2)+(h*(s1+2*s2+2*s3+s4))/6;
        vals(k+1,3)= vals(k,3)+(h*(r1+2*r2+2*r3+r4))/6;
    end
    k = k+1;
end

end
