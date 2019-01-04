function l = my_l(k,x)

    if k == 0
        l = ones(1,size(x,2));
        return
    end
    
    if k == 1   
        l = 1 - x;
        return
    end
    
    l = ((2*k-1-x)./k).*my_l(k-1,x)-((k-1)/k).*my_l(k-2,x);

end

