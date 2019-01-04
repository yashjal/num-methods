function [vals] = newton2(f,df,x,maxit)
    vals = zeros(maxit+1,3);
    k = 1;
    while k <= maxit+1
        vals(k,1) = k;
        vals(k,2) = x(1,1);
        vals(k,3) = x(2,1);
        x=x-inv(df(x(1,1),x(2,1)))*f(x(1,1),x(2,1));
        k=k+1;
    end
end