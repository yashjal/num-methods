function v = genVec( n )
v = zeros(n+1,1);
    for i=1:n+1
        v(i,1) = -1+((2*(i-1))/n);
    end

end

