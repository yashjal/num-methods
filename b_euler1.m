function [ vals ] = b_euler1( t0,h,xi,d_xi,iter,y0,g)
% backward Euler method
vals = zeros(iter+1,4);
k=0;
vals(1,2) = y0;
while(k<(iter+1))
    vals(k+1,1)= t0 + k*h;
    vals(k+1,3)= g(vals(k+1,1));
    if k>0
        x=vals(k,2);
        while  (xi(h,x,vals(k,2)) ~= 0) && (xi(h,x,vals(k,2)) >= 10^(-15))
            x = x - (xi(h,x,vals(k,2))/d_xi(h));
        end
        vals(k+1,2)= x;
    end
    vals(k+1,4) = vals(k+1,3) - vals(k+1,2); 
    k = k+1;
end

end