% MÉTODO DA SECANTE

f = @(x) x^3 - x - 1;
x0 = 1.2;
x1 = 1.5;
fx = (f(x1) - f(x0)) / x1 - x0;
x2 = x1 - f(x1)/fx

while abs(x2 - x1) > 0.0001
    x0 = x1;
    x1 = x2;
    fx = (f(x1) - f(x0)) / x1 - x0;
    x2 = x1 - f(x1)/fx
end