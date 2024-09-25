% MÉTODO DE ELIMINAÇÃO DE GAUSS PIVOTEADO

%     {2x + 4y + 3z = 1 }
% S = { x + 2y - 2z = 11}
%     {4x + 4y + 3z = 3 }

s = [2 4 3 1; 1 2 -2 11; 4 4 3 3]
[m,n] = size(s);
b = s(:,4);
vetSol = [0;0;0];

for i = 1:m - 1
    for j = 1:n - 2
        if s(i,i) ~= 0
          pivo = -s(j + 1,i)/s(i,i);
          s(j + 1,:) = s(j + 1,:) + (pivo * s(i,:));
          pos1 = j;
          pos2 = j + 1;
        end
    end
end

vet = s(pos2, :);
s(pos2,:) = s(pos1,:);
s(pos1,:) = vet

for i = n - 1:-1:1
    soma = 0;
    for j = i - 1:i
        soma = soma + b(j)
    end
    i
    vetSol(i,:) = soma / s(i,i)
end       