function [] = power1( A, x0, iter, current )
    if (current <= iter)
        y = A*x0;
        v = y/norm(y)
        lambda = v'*A*v
        power1(A,v, iter, current+1);
    end
end

