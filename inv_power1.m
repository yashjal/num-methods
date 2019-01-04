function [] = inv_power1( A, x0, theta, iter, current )
    if (current <= iter)
        y = (A-theta*eye(size(A,1)))\x0;
        v = y/norm(y)
        lambda = v'*A*v
        inv_power1(A,v,theta,iter, current+1);
    end
end

