% MÉTODO DE GAUSS-SEIDEL

s = [10 2 1; 1 5 1; 2 3 10];
r = [7; -8; 6];
[n,m] = size(s);

vetAux = [0 0; 0 0; 0 0];

vetAux(1,1) = -0.2;
vetAux(1,2) = -0.5;
vetAux(2,1) = -0.2;
vetAux(2,2) = -0.2;
vetAux(3,1) = -0.2;
vetAux(3,2) = -0.3;
r = [0.7; -1.6; 0.6];

epslon = 0.001;

vetSol = [0;0;0]

for i = 1:n
       





     

