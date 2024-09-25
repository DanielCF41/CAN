% MÉTODO DO PONTO FIXO

    f = @(x) x^3 - x -1;
    g = @(x) nthroot(x + 1, 3);
    x0 = 1;
    x1 = g(x0);
    
    while abs(x0 - x1) > 0.0001
        x0 = x1;
        x1 = g(x0);
    end     

    p = [1 ;2]
    [n,m]=size(p)