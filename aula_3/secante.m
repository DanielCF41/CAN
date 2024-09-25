format long
f = @(x) x^2 - 3;
x1 = 1;
x2 = 1.2;

fx = (f(x2) - f(x1)) / (x2 - x1)
x3 = x2 - f(x2)/fx

while(abs(x3 - x2) > 10^-5)
    x1 = x2;
    x2 = x3;
    fx = (f(x2) - f(x1)) / (x2 - x1)
    x3 = x2 - f(x2)/fx
end