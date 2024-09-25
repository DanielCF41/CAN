mat = eye(5)
mat(2,3) = 10

mat2 = zeros(2,7)
mat2(2,:)= 10
mat2(1,1) = 20

mat3 = [2 1;3 4]
mat3(:,1) = mat3(:,1).*2

b = ones(1,11)
b(2:2:10) = 2

v = [1 2]
x = [v' v']

mat4 = [1 3;2 1]
mat5 = mat4'
max(max(mat4*mat5))

k1 = [1 -2 3 -5 6 7]
k2 = [-2 -10 -15 -20 40 3]
min(min(k1.*k2))

vp = [2:2:14]
vi = [1:2:14]
v1 = vp.*vi
v2 = vi.*vp

g = zeros(5,7)
g(1,:) = 1
g(:,3) = 3
g(4,:) = 4

d = [-1:0.1:1]
size(d)