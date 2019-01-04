function out = D1(x,eps)

out = diag(1./(((x.^2) + eps).^(0.5)));

end
