phi =@(x) sqrt(x + 2);
% phi =@(x) x^2 - 2;
% phi =@(x) (1 + 2/x)
x1 = 2;
x2 = phi(x1);
format long
while(abs(x1 - x2) > 0.00001)
    x1 = x2;
    x2 = phi(x1)
end

