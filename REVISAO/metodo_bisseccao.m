% MÉTODO DA BISSECÇÃO

f = @(x) -x^2 + 2;
a = 2;
b = 4;
epslon = 0.001;

while abs(b - a) > epslon
    zerofunc = (a + b) / 2
    if f(zerofunc) < 0 
        a = zerofunc;
    else
        b = zerofunc;
    end
end

