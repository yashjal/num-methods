%5d: Optimization problem
close all;

[xx,yy]=meshgrid(-8:.01:8);
f_fun = @(x,y) -cos(x).*cos(0.2*y);
g_fun = @(x,y)[cos(0.2*y).*sin(x); 0.2*cos(x).*sin(0.2*y)];
H_fun = @(x,y)[cos(x).*cos(0.2*y), -0.2*sin(0.2*y).*sin(x);
	-0.2*sin(0.2*y).*sin(x), 0.04*cos(x).*cos(0.2*y)];
zz = f_fun(xx,yy);

contour(xx,yy,zz,30,'k','linewidth', 1);
hold on;
axis equal tight;
plot(0,0,'rx','Linewidth',4);
plot(pi/2,5*pi/2,'rx','Linewidth',4);
plot(-pi/2,5*pi/2,'rx','Linewidth',4);
plot(pi/2,-5*pi/2,'rx','Linewidth',4);
plot(-pi/2,-5*pi/2,'rx','Linewidth',4);
title('Solution point');

pause;
%starting point
X = -pi/6;
Y = 5*pi/6;
for k=1:20
    
    plot(X,Y,'bx','Linewidth',5);
    title('Iterate x_k (in blue): Using Newtons method without line search');
    g = g_fun(X,Y);
    H = H_fun(X,Y);

    d = -H \ g;
    %d = - g;
    f = f_fun(X,Y);
    %step length = 1
    Xnew = X+d(1);
    Ynew = Y+d(2);

    %fzero to find step length
%    gd = @(a) -d(1)*sin(X+a*d(1))*cos(0.2*(Y+a*d(2)))-0.2*d(2)*sin(0.2*(Y+a*d(2)))*cos(X+a*d(1));
%    for i=1:5
%        alpha = fzero(gd,0.1+(i*0.05));
%        if alpha > 0
%            break;
%        end
%    end
%    if alpha < 0
%        fprintf('alpha = %f < 0\n',alpha);
%        %return;
%    end
%    Xnew = X+alpha*d(1);
%    Ynew = Y+alpha*d(2);
    f_new = f_fun(Xnew,Ynew);
    fprintf('New f: %f, Old f: %f\n', f_new, f);
    if abs(f_new - f) < 10e-10
        fprintf('found stationary point X=%f Y=%f\n', Xnew, Ynew);
        return;
    end
    X = Xnew; Y = Ynew;
end