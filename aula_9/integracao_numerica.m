%INTEGRAÇÃO NUMÉRICA

delta = 0.1;
x = [0:delta:1];
f = @(x) x;
y = f(x);

integral = sum(y * delta)

