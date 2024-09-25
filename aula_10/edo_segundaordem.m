h = 1;
V = [];
Vh = [];

f = @(x) sin(x) * exp(-0.1);

for k = 0 : 5
    h = h/2;
    L = 1;
    n = L/h;
    g = zeros(n +1,1);
    g(2:n) = -2*h^2;
    M = zeros(n + 1, n + 1);
    M(1,1) = 1;
    M(n+1,n+1) = 1;


    for i = 2: n
        M(i, i - 1) = 1;
        M(i, i) = -2;
        M(i, i+1) = 1;
    end 
    S = M\g;
    x = [0:h:L];  
    size(S)
    size(f(x))
    erro = abs(max(S' - f(x)))
    V = [V erro];
    Vh = [Vh h];
    
end

figure();
plot(log10(Vh), log10(V));
figure();
plot(x,S,'*', x,f(x));
 
 