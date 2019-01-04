function D = qrAlg(A)
    %assuming A is square and in Hessenberg form
    D = A; I = eye(size(A,1));
    s = A(size(A,1),size(A,2)); %shift
    for i=1:100000
        [Q,R] = qr(D-s*I);
        D = R*Q + s*I;
    end
end

