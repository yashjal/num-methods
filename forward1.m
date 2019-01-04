function x = forward1( L,b )
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

    for i=1:m
        x(i,1) = b(i,1);
        for j=1:i-1
            x(i,1) = x(i,1)- L(i,j)*x(j,1);
        end
        x(i,1) = x(i,1) / L(i,i);
    end
    
end

