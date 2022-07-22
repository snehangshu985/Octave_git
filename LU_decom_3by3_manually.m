% ===============================================================
% LU decomposition and solving for LU(x) = b
% ================================================================

% write down the original matrix
Aor = [2 -2 1; 4 -2 3; -4 8 -2]
Aa = [Aor eye(3)] % augement with identity matrix
% split the row vector
R1 = Aa(1,:)
R2 = Aa(2,:)
R3 = Aa(3,:)
% The first pivot variable
% first operation
R2 = R2 - (R2(1)/R1(1))*R1
A = [R1; R2; R3]
M1 = A(:,4:6)
% second operation
R3 = R3 - (R3(1)/R1(1))*R1
A = [R1; R2; R3]
M2 = A(:,4:6)
M2 = M2 - M1 + eye(3)
% the second pivot variable
% 3rd operation
% again replace the identity matrix
A = A(:,1:3)
A = [A eye(3)]
R1 = A(1,:)
R2 = A(2,:)
R3 = A(3,:)
R3 = R3 - (R3(2)/R2(2))*R2
A = [R1; R2; R3]
M3 = A(:,4:6)



% M1 = [1 0 0; 2 1 0; 0 0 1]
% M2 = [1 0 0; 0 1 0; 1 0 1]
% M3 = [1 0 0; 0 1 0; 0 -1 1]

% inverse of the elementary matrices
M1I = (-1) * (M1 - eye(3)) + eye(3)
M2I = (-1) * (M2 - eye(3)) + eye(3)
M3I = (-1) * (M3 - eye(3)) + eye(3)

% the upper triangular matrix
Au = A(:,1:3)

% the lower trangular matrix
Al = M3 + M2 + M1 - 2*eye(3)
Al = (-1) * (Al - eye(3)) + eye(3)
% ============================================================
% first out put
clc
Al
Au
% ============================================================
% ############################################################


% Now solving LUx = b
% remember
% U * x = y
% L * y = b
% input b

b = [1 -1 1]';

Aly = [Al b];



y = rref(Aly)(:,4);

y1 = y(1); y2 = y(2); y3 = y(3);

% now U * x = y solving

Aux = [Au y];

x = rref(Aux)(:,4);


x= rats(x)
