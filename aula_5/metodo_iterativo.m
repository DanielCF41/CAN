% METODO ITERATIVO - GAUSS JACOB

format long
A = [5 2 1; -1 4 2; 2 3 10];
B = [7; 3; -1];
[n, m] = size(A);

for i = 1: n
    
    B(i) = B(i)/A(i,i);
    A(i,:) = A(i,:)/A(i,i);
    A(i,i) = 0;
   
end

x0 = [1; 1; 1];
x1 = -A*x0 + B;
erro = sum(abs(x1 - x0))/sum(abs(x1))

while(erro > 0.0001)
    
    x0 = x1;
    x1 = -A*x0 + B;
    erro = sum(abs(x1 - x0))/sum(abs(x1))
end

x1
A1 = [5 2 1; -1 4 2; 2 3 10];
A1 * x1
