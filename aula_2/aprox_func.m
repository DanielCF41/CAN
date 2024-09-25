f = @(x)sin(x);
a = 2;
b = 4;

fa = f(a);
fb = f(b);

cont_aprox = 0;
format long
while (abs(a - b) > 0.0000001)
x = (a + b)/2
fx = f(x);
if(fa * fb < 0)
  if(fa > 0 && fb < 0 && fx > 0) a = x;
  elseif(fa > 0 && fb < 0 && fx < 0) b = x;
  elseif(fa < 0 && fb > 0 && fx < 0) a = x;
  elseif(fa < 0 && fb > 0 && fx > 0) b = x;
  end
  fa = f(a);
  fb = f(b);
  cont_aprox = cont_aprox + 1;
end
end

cont_aprox



