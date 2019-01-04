function [k,lambda,y,x] = inv_power(A,y0,sigma,iter,size,eig)
% inverse iteration method

k = 0
y = y0 / norm(y0)
k = k+1

while k <= iter
    z = (A-sigma*eye(size))\y;
    lambda = sigma + 1/(transpose(y)*z)
    y = z/norm(z)
    x = eig - lambda
    k = k + 1
end

end

