function x = backward( A,b )
    [n,m] = size(A);
    if any(any(tril(A,-1)))
       error('A must be upper triangular')
    end
    if n~=m
       error('A must be square');
    end
    if any([n 1]~=size(b))
       error('y must be a vector with the same number of rows as A');
    end
    x=zeros(n,1);
    x(n)=b(n)/A(n,n);
    for i=n-1:-1:1
       x(i)=(b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
    end
end