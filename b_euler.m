function [ vals ] = b_euler( t0,h,xi,d_xi,iter,y0)
% backward Euler method
vals = zeros(iter+1,2);
k=0;
vals(1,2) = y0;
while(k<(iter+1))
    vals(k+1,1)= t0 + k*h;
    if k>0
        x=vals(k,2);
        while (xi(h,vals(k+1,1),x,vals(k,2)) ~= 0) && (xi(h,vals(k+1,1),x,vals(k,2)) >= 10^(-6))
            x = x - (xi(h,vals(k+1,1),x,vals(k,2))/d_xi(h,vals(k+1,1),x));
        end
        vals(k+1,2)= x;
    end
    k = k+1;
end

end

