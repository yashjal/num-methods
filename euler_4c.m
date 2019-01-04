f = @(x,y) x*sin(y);
exact_y= @(x) pi-atan(2*exp(x.^2/2)./(exp(x.^2)-1));
x0 = 0;
y0 = pi/2;
% final time
T = 3;
% time step size
h = 0.15;
% number of steps
N = T/h;

X = zeros(1,N+1);
xk = x0;
Y = zeros(1,N+1);
yk = y0;
Y(1) = y0;
for k=1:N
   xk = x0 + (k-1)*h;
   yk = yk + h*f(xk,yk);
   % keep record for plotting
   X(k) = xk;
   Y(k+1) = yk;
end

X(N+1) = x0 + N*h;
%plot(X,Y,'b-o','linewidth', 2); hold on
err=exact_y(3)-Y(N+1)
