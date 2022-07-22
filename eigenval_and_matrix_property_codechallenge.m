% ===========================================
% explore 
% trace of a matrix is sum of eigen_vector
% value of det of matrix is product of eigen_vals

A = randn(7);
% A = A + A©
tr = trace(A)
dt = det(A)
[V, D] = eig(A);
d = diag(D)
% checking trace of a matrix is sum of eigen_vector
[tr sum(d)]

% value of det of matrix is product of eigen_vals
[dt prod(d)]

% ====================================
% same thing with singular matrix of reduced rank

B = randn(7,5) * randn(5,7);

trB = trace(B)
dtB = det(B);
[Vb, Db] = eig(B);
d_b = diag(Db);
% checking trace of a matrix is sum of eigen_vector
[trB sum(d_b)]

% value of det of matrix is product of eigen_vals
[dtB prod(d_b)]