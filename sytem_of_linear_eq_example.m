% ==========================================================
%              # system of linear equation #
% ==========================================================
% ----------------------------------------------------------
% System with one unique solution
% ----------------------------------------------------------
% A augmented matrix of three equation and three unknown
A = [1 -2 1 0; 
     0 2 -8 8; 
    -4 5 9 -9]
% reduced row echelon form of A
rref(A)
% result
%  1    0    0   29
%  0    1    0   16
%  0    0    1    3
% x1 = 29, x2 = 16, x3 = 3

% ----------------------------------------------------------
% System with infinitly many solution
% ----------------------------------------------------------
% A system of equation B, where the last row is ...
% weighted combination of first row
B = A;
B(3,:) = 2.5*B(1,:)

rref(B)
% result
%  1   0  -7   8
%  0   1  -4   4
%  0   0   0   0
% no exact solution

% ----------------------------------------------------------
% System with no solution
% ----------------------------------------------------------

C = A;

C(3,:) = [1  -2   1   10]

% coef of last row is same as first row but ....
% the constant term is different

rref(C)
% result
%  1   0  -7   0
%  0   1  -4   0
%  0   0   0   1
% thrird row implies 0 * x3 = 1, which is inconsistent
% system has now solution









