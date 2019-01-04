function [] = inv_power2( A, x0, theta, iter, current )
    if (current <= iter)
        y = (A-theta*eye(size(A,1)))\x0;
        v = y/norm(y)
        lambda = v'*A*v
        inv_power2(A,v,lambda,iter, current+1);
    end
end