function C = myChol( A )
    n = length( A );
    L = zeros( n, n );
    for i=1:n
        if A(i,i) <= 0
            disp('error: negative/zero diagonal element');
            return;
        end
        L(i, i) = sqrt(A(i, i) - L(i, 1:i-1)*L(i, 1:i-1)');
        for j=(i + 1):n
            L(j, i) = (A(j, i) - L(i,1:i-1)*L(j ,1:i-1)')/L(i, i);
        end
    end
    C = L';
end

