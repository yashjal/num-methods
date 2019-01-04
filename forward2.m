function x = forward2( L,b )
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

    x = zeros(m,1);

    x(1,1) = b(1,1)/L(1,1);
    for i = 2:n
        x(i,1) = ( b(i,1) - L(i,1:i-1)*x(1:i-1,1) ) /L(i,i);
    end

end

