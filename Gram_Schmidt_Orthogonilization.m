% compute the Gram-Schmidt Orthogonilization of a matrix

% any matrix
A = [0 1 -1; 1 1 -1]'
% taking each column vector of the matrix
A1 = A(:,1) % first column
A2 = A(:,2) % second column
%A3 = A(:,3) % third column
% taking only the orthognal part of A2 
% that is removing the paralal part of A2 to A1
           
           % this part is paralal to A1
A2O = A2 - dot(A1,A2)/dot(A1, A1) * A1
% taking only the orthognal part of A2
% that is removing the paralal part of A3 to A1 and A2O

            % this part of A3 is paralal  % this part is paralal to A2O
            % to A1
%A3O = A3 - dot(A1,A3)/dot(A1, A1) * A1 - dot(A2O,A3)/dot(A2O, A2O) * A2O

% A3O is [0 1.1*10^(-16] which is basically [0 0] ignoring the rounding error

% normalize each column vector

A1_1 = A1/norm(A1)
A2O_1 = A2O/norm(A2O)
% A3O_1 = A3O/norm(A3O)

% Horizonal concatinating the Gram Schmidt Orthogonal Matrix
A_GSO = [A1_1 A2O_1 [0 0]']

% checking from defination of orth matrix

norm(A_GSO(:,1))

norm(A_GSO(:,2))

dot(A_GSO(:,1), A_GSO(:,2))
