% creating a 10 X 10 matrix of rank 4 by matrix multiplication
A = round(10*rand(10,4)) * round(10*rand(4,10))

% creating any random matrix with rank r

% matrix is m x n and rank in r
m = 15;
n = 7;
r = 5;

A = round(10*rand(m,r)) * round(10*rand(r,n));
size(A)
rank(A)