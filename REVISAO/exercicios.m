% EXERCÍCIO 1

mat = eye(5)
mat(2,3) = 10

% EXERCÍCIO 2

Z = zeros(2,7)
Z(2,:) = 2
Z(1,1) = 20

% EXERCÍCIO 3

A = [2 1 ; 3 4]
A(:,1) = A(:,1) * 2

% EXERCÍCIO 4

B = ones(1,11)
B(2:2:end) = 2

% EXERCÍCIOS 5

V = [1 2]
x = [V',V']

% EXERCÍCIO 6

%M1 = [1 3; 2 1]
%M2 = M1'
%max(M1 * M2)

% EXERCÍCIO 7

K1 = [1 -2 3 -5 6 7]
K2 = [-2 -10 -15 -20 40 3]
min(K1.*K2)

% EXERCÍCIO 8

VP = [2; 4; 6; 8; 10; 12; 14]
VI = [1 3 5 7 9 11 13]
V1 = VP * VI
V2 = VI * VP

% EXERCÍCIO 9

G = zeros(5,7)
G(1,:) = 1
G(:,3) = 3
G(4,:) = 4

% EXERCÍCIO 10

D = (-1:0.1:1)



