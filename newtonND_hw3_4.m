xx = -4:.01:4;
yy1 = xx.^2 - 2;
yy2a = 2*sqrt(1-xx.^2/16);
yy2b = -2*sqrt(1-xx.^2/16);

plot(xx,yy1,'r','Linewidth',2); hold on;
plot(xx,yy2a,'k',xx,yy2b,'k','Linewidth',2);
axis([-4,4,-2,4]);

F = @(x,y)[y - x.^2 + 2; x.^2/16 + y.^2/4 - 1];
J = @(x,y)[-2*x 1; x/8 y/2];

% Newton iteration
x = 2;
y = -2;
plot(x,y,'xr','Linewidth',10);
for i = 1:15
    dx = J(x,y)\-F(x,y);
    x = x + dx(1);
    y = y + dx(2);
    fprintf('Iteration %4d: %2.14f, %2.14f\n', i, x, y);
    plot(x,y,'xr','Linewidth',10);
    if norm(F(x,y)) < 10^-8
        fprintf('Converged!')
        break;
    end
end