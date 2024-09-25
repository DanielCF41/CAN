% INTERPOLAÇÃO POLINOMIAL DE LAGRANGE

f = @(x) -3*x^2 + x + 1;

x0 = 0;
x1 = 1;
x2 = -1;

y0 = f(x0);
y1 = f(x1);
y2 = f(x2);

x = [x0,x1,x2];
y = [y0,y1,y2];

xx = [x0:0.1:x2];

l0 = ((xx - x1).*(xx - x2))/(x0 - x1)*(x0 - x2);
l1 = ((xx - x0).*(xx - x2))/(x1 - x0)*(x1 - x2);
l2 = ((xx - x0).*(xx - x1))/(x2 - x0)*(x2 - x1);

yy = y0*l0 + y1*l1 + y2*l2;

plot(x,y,'b*',xx,yy,'ro-');

