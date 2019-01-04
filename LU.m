function [L,U] = LU(A)
    [n,m] = size(A);
    if n~=m
       error('A must be square');
    end
    L=zeros(n,n);
    U=zeros(n,n);
    for i=1:n
        for k=1:i-1
            L(i,k)=A(i,k);
            for j=1:k-1
                L(i,k)= L(i,k)-L(i,j)*U(j,k);
            end
            if (abs(U(k,k)) < 10^(-8))
                error('division by 0 or very small number');
            end
            L(i,k) = L(i,k)/U(k,k);
        end
        for k=i:n
            U(i,k) = A(i,k);
            for j=1:i-1
                U(i,k)= U(i,k)-L(i,j)*U(j,k);
            end
        end
    end
    for i=1:n
        L(i,i)=1;
    end
end