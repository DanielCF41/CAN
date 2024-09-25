% MÉTODO DA ELIMINAÇÃO DE GAUSS

% SISTEMA 
%  x + 4y + 3z = 1
% 2x + 5y + 4z = 4
%  x - 3y - 2z = 5

s = [1 4 3 ; 2 5 4 ; 1 -3 -2];
vetP = [1; 4 ; 5];
vetS = zeros(size(vetP));

[m,n] = size(s);


for j = 1:1:n
    for i = 1 + j:1:m
        vetP(i,:) = vetP(j,:) * s(i,j) - vetP(i,:) * s(j,j);
        s(i,:) = s(j, :) * s(i, j)- s(i, :) * s(j, j);   
    end   
end

% vetS(m,:) = vetP(n) / s(m,n);
% vetS(m - 1, :) = vetP(n - 1) + s(m - 1, n) / s(m - 1, n - 1);

vetS(m,:) = vetP

    

