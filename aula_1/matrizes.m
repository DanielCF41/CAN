vet1 = [1 2 3];
vet2 = [1 2 4];
dot(vet1, vet2)
cross(vet1, vet2)

vet3 = [7:7:79]
size(vet3)

vet4 = [8:2:28]
size(vet4)

vet3.*vet4
sum(vet3.*vet4)
dot(vet3, vet4)

z = zeros(10)
ones(10)

zeros(5,3)
eye(4) 
mat1 = [3 4;2 3]
det(mat1)
inv(mat1)

mat2 = zeros(5,3)
mat2(:,2) = [1:5]
mat2(1,:) = [5 9 -1]

mat2'
reshape(mat2,1,15)