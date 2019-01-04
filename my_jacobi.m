function [x1,k] = my_jacobi(A,b,x0,tol)
    n = size(x0,1);
    r = b-A*x0; norm_r = norm(r,1);
    x = x0;
    x1 = x0;
    r1 = r;
    k = 1;
    while 1
        for j=1:n
            tmp = (b(j)-A(j,[1:j-1,j+1:n])*x([1:j-1,j+1:n]));
            x1(j) = tmp/A(j,j);
            r1(j) = tmp - A(j,j)*x(j);
        end
        k = k+1;
        x = x1;
        if norm(r1,1)/norm_r < tol
            break;
        end
    end
end

