% INTEGRAÇÃO NUMÉRICA - TRAPÉZIOS

f = @(x) 0.3 + 20*x - 140*x^2 + 730*x^3 - 810*x^4 + 200*x^5;  % de a = 0,2 até b = 0,8

a = 0.2;
b = 0.8;

n1 = 1;
x1 = [a,b];

n2 = 3;
x2 = [a:0.2:b];

n3 = 6;
x3 = [a:0.1:b];

erro = 0;

i1 = ((b - a)/2*n1) * (f(a) + f(b))
erro = 12.8237 - i1


i2 = (((b - a)) * (f(a) + 2*f(x2(2)) + 2*f(x2(3)) + f(b))) / 2*n2
erro = 12.8237 - i2


