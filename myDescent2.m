%6: mix Newton/steepest descent for Optimization problem
close all;

[xx,yy]=meshgrid(-5:.01:5);
f_fun = @(x,y) 0.5*(x^2+y^2)*exp(x^2-y^2);
g_fun = @(x,y)[exp(x^2-y^2)*(x+x^3+x*y^2); -exp(x^2-y^2)*(-y+y^3+y*x^2)];
H_fun = @(x,y)[exp(x^2-y^2)*(1+5*x^2+y^2+2*x^4+2*x^2*y^2), -exp(x^2-y^2)*(2*x^3*y+2*x*y^3);
	-exp(x^2-y^2)*(2*x^3*y+2*x*y^3), exp(x^2-y^2)*(1-5*y^2-x^2+2*y^4+2*x^2*y^2)];
zz = f_fun(xx,yy);

contour(xx,yy,zz,30,'k','linewidth', 1);
hold on;
axis equal tight;

pause;
%starting point
X = 1;
Y = 1;
for k=1:20
    
    plot(X,Y,'bx','Linewidth',5);
    title('problem 6');
    g = g_fun(X,Y);
    H = H_fun(X,Y);
    %descent direction
    d = -H \ g;
    if (-g'*d)/(norm(g)*norm(d)) < min([0.1 0.5*norm(g)])
        d = -g;
    end
    
    f = f_fun(X,Y);
    alpha = 1; c = 1e-4;
    suff_descent = 0; i = 0;
    % line search
    while (suff_descent == 0 && i < 10)
        Xnew = X+alpha*d(1);
        Ynew = Y+alpha*d(2);
        f_new = f_fun(Xnew,Ynew);
        fprintf('        Backtrack: New cost: %f, Old cost: %f\n', f_new, f);
        if (f_new < f + c * alpha * g' * d)
            suff_descent = 1;
            fprintf('Iter %d: #backtracks: %d, f: %2.16f.\n',k,i,f_new);
        else
            alpha = alpha/2;
        end
        i = i+1;
    end
    if (suff_descent == 0)
        fprintf('Did not find sufficient descent!\n');
        return;
    end
    %f_new = f_fun(Xnew,Ynew);
    %fprintf('New f: %f, Old f: %f\n', f_new, f);
    if norm(g) <= 10e-10
        fprintf('found stationary point X=%f Y=%f\n', X, Y);
        fprintf('g_x=%f , g_y=%f\n',g(1),g(2));
        return;
    end
    X = Xnew; Y = Ynew;
end