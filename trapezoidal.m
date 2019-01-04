function y = trapezoidal(f,a,b,m)
%TRAPEZOIDAL Rule
    y =0;
    h = (b-a)/m;
    ai=a;
    for i=1:m
        y = y+(h)*(f(ai)+f(ai+h))/2;
        ai=ai+h;
    end
end
