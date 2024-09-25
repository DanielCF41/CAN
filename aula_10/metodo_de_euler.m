% MÉTODO DE EULER

V = [];
Vh = [];
yy0 = 1;
L = 1;
f = @(x) exp(x);
h = 1;

for i = 1: 20
    y0 = yy0;
    g = [y0];
    h = h/1.1;
    x = [0: h : L];
    for j = 1: L/h
        k1 = y0;
        k2 = y0 + h*k1/2;
        k3 = y0 + h * k2/2;
        k4 = y0 + h * k3;
        f1 = y0 + h*(k1 + 2 * k2 +2 * k3 + k4) / 6
        g = [g f1];
        y0 = f1;
        x = [0:h:L];
    end
    plot(x,g,'*',x, f(x))
    erro = max(abs(g - f(x)))
    V = [V erro];
    Vh = [Vh h];
end
figure()
plot(Vh, V);
figure()
plot(log10(Vh), log10(V));

vetVh = [min(log10(Vh)), max(log10(Vh))]
vetV = [min(log10(V)), max(log10(V))]




