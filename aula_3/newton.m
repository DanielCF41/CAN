format long
f = @(x) (1 + x) * exp(x);
fx = @(x)(2 + x) * exp(x);
x1 = -3;
x2 = -1;
x3 = x2 - f(x2)/fx(x2)

while(abs(x3 - x2) > 10^-5)
    x1 = x2;
    x2 = x3;
    x3 = x2 - f(x2)/fx(x2)
end