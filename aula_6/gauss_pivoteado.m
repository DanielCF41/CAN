M =[0 0 1; 3 1 1; -1 -1 -1];
b = [1; 5; -3];
[m,n] = size(M);

for j=1:n-1
    maximo = max(abs(M([j:m],j)))
    posicao = j-1 + find(maximo == abs(M([j:m],j)))
    M([posicao,j],:) = M([j, posicao],:);
    b([posicao,j],:) = b([j, posicao],:);
	for i=j+1:m 
        pivo = M(i,j)/M(j,j);
        M(i,:) = M(i,:)-M(j,:)*pivo
        b(i,:) = b(i,:)-b(j,:)*pivo;
    end
 
end

for i = 1 : n
    b(i,:) = b(i,:)/M(i,i); 
    M(i,:) = M(i,:)/M(i,i);
end    

for i = n - 1: -1 :1
    soma = 0;
   for j = i + 1:m
     soma = soma + M(i, j) * b(j);
   end
   b(i) = b(i) - soma;
end    

b

