% MÉTODO DE NEWTON-RAPHSON

    f = @(x) x^3 - x - 1;
   df = @(x) 3*x^2 - 1;
   
   x0 = 1;
   x1 = x0 - (f(x0)/df(x0))
   
   while abs(x1 - x0) > 0.0001
       x0 = x1;
       x1 = x0 - (f(x0)/df(x0))
   end
   
   