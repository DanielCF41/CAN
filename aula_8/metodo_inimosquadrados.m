% MÉTODO MÍNIMOS QUADRADOS PARÁBOLA
    x = [-1:0.1:1]
    y = 3*x.^2 + 2*x + 1 + rand(size(x))
    y = [2.0942 2.2285 1.7909 1.7659 1.5799 1.3885 0.7136 0.7388 1.0396 1.3609 1.6544 1.6376 2.3400 2.588 3.2486 3.2813 3.6051 3.9756 5.1310 6.0088 6.4235];
    A = [sum(x.*x.*x.*x)  sum(x.*x.*x)  sum(x.*x) ; sum(x.*x.*x)  sum(x.*x) sum(x) ; sum(x.*x)  sum(x)  sum(size(x,2))];
    B = [sum(x.*x.*y); sum(x.*y); sum(y)]
    sol = A\B
    
    a = sol(1,1)
    b = sol(2,1)
    c = sol(3,1)
   
    erro0 = sum((a*x.^2 + b*x + c - y).*(a*x.^2 + b*x + c - y))
    
    a = 3.1
    erro1 = sum((a*x.^2 + b*x + c - y).*(a*x.^2 + b*x + c - y))
    
    plot(x,y,'*', x, a*x.^2 + b*x + c)

 
