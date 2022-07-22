% creating a sysmetric sqr matrix_type
A = round(10*rand(5));
A = A + A©;

% eigen decom
[E, D] = eig(A);

% svd
[U,S,V] = svd(A);


% sorting the eigen values descending
d = diag(D)
d = abs(d)
[d, idx] = sort(d, ©descend©)
E = E(:,idx)

% taking only the absolute values
E = abs(E)
U = abs(U)
subplot(211), imagesc(E)
subplot(212), imagesc(U)
