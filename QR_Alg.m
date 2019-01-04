function count = QR_Alg( A, tol )
    real = eig(A);
    real = sort(real);
    
    err = zeros(size(real,1),1);
    for i=1:size(real,1)
        err(i,1) = tol;
    end
    
    x = diag(A); %zeros(size(real,1),1)
    z = ones(size(real,1),1);
    count = 0;
    while ~(isequal((abs(x-real)<=err),z))
        [Q,R] =qr(A);
        A = R*Q;
        x = diag(A);
        x = sort(x);
        count = count + 1;
    end

end

