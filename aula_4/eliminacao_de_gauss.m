% SISTEMA
% {X  + 4Y  + 2Z = 17}
% {-X + 0   + 3Z = 11} 
% {X  + -2Y + Z  = 1 }

matP = [10e-19 1 ; 1 1];
vetP = [1; 2];
vetSol = zeros(size(vetP));

[m,n] = size(matP);

for j = 1 : n - 1
    for i = j + 1: m
        pivo = matP(i,j)/matP(j,j);
        matP(i,:) = matP(i,:) - matP(j,:) * pivo;
        vetP(i,:) = vetP(i,:) - vetP(j,:) * pivo;
    end
end

for i = 1 : n
    vetP(i,:) = vetP(i,:)/matP(i,i); 
    matP(i,:) = matP(i,:)/matP(i,i);
end    

for i = n - 1: -1 :1
    soma = 0;
   for j = i + 1:m
     soma = soma + matP(i, j) * vetP(j);
   end
   vetP(i) = vetP(i) - soma;
end    

vetSol = vetP

