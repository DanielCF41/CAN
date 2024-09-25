n = 15;
n1 = 1
n2 = 1
f = 0;

vet = [n];

while(f < n)
  f = n1 + n2
  n1 = n2;
  n2 = f;
  vet =[vet f];
end

plot(vet, '*')