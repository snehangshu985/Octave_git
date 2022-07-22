% Representing a matrix as the sum of outer prduct of
% column vectors of first matrix and row vector of 
% second matrix 


pkg load symbolic

syms a1 a2 a3 a4 b1 b2 b3 b4

A = [a1 a2; a3 a4] % creating first matrix
B = [b1 b2; b3 b4] % the second matrix

AB = A * B % the AB product matrix

% taking the column vectors of first matrix
A1 = A(:,1) 
A2 = A(:,2) 
% taking the row vectors of second matrix
B1 = B(1,:)
B2 = B(2,:)

AB2 = A1 * B1 + A2 * B2

AB - AB2 % is zero matrix