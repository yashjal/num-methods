function x = forward3( L,b )
    [m,n] = size(L);
    if m ~= n 
        disp('error:matrix not square')
        return
    end
    [M,N] = size(b);

    if M ~= m || N ~= 1
        disp('error:size of L and b not compatible')
        return
    end
    
    for j=1:n-1,
        b(j)= b(j)/L(j,j);
        b(j+1:n)=b(j+1:n)-b(j)*L(j+1:n,j);
    end;
    b(n) = b(n)/L(n,n);
    x = b;

end

