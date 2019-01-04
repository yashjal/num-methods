function out = D(A,b,x,eps)

out = diag(1./((((A*x-b).^2) + eps).^(0.5)));

end

