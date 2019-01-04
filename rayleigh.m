function [k,y,x,c] = rayleigh(A,y0,iter,size,eig)
% Rayleigh quotient iteration method

k = 0
y = y0 / norm(y0)
sigma = transpose(y)*A*y
x = eig-sigma

while k <= iter
    k = k+1
    c = cond(A-sigma*eye(size))
    z = (A-sigma*eye(size))\y;
    y = z/norm(z)
    sigma = transpose(y)*A*y
    x = eig - sigma
end

end