% creating a random matrix
X = [8 7 4; 5 4 9; 2 5 6];
% creating a symtric matrix using the addition method
A = (X + X')/2;
% creating the skew-symetric matrix

B = (X - X');

% measurement of assymetriness of a matrix is 
% norm(anti-A)/norm(A), where A is any matrix
% anti A is (A - A')/2

% in the code example here, 
% A is symetric, B is skew-sysm and X is random martix
% defining Anti
TST = F;
Anti= (TST - TST')/2;
% define matrix assymetric index MAI

MAI = norm(Anti)/norm(TST)

% for a sysm matrix , MAI is zero,
% for skew symetric matrix the MAI is 1,
% for a randm matrix MAI is between 1 to 0


