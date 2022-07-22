% ===========================================%
%Compressed a matrix with eigen value sorted %
% ===========================================%
A = round(10*rand(10));
A = A * A©
[V, D] = eig(A);


d = diag(D)

[d, idx] = sort(d, ©descend©)
D = diag(d)
V = V(:,idx)

round(V * D * V©)

% visualize eigen values

d1 = diag(D)


plot(d1)


Vt = V©
A_com=zeros(10)
for i=1:3
  A_com1 = d(i) * V(:,i) * Vt(i,:)
  A_com = A_com + A_com1
end
%end

A_com = round(A_com)

A

% visualize
subplot(211), imagesc(A)
subplot(212), imagesc(A_com)







