phi = @(x) -exp(x)/2;
x1 = -0.5;
x2 = phi(x1);

while(abs(x1 - x2) > 0.001)
    x1 = x2;
    x2 = phi(x1)
end
