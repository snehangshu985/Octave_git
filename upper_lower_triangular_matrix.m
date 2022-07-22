% creating a lower and upper triangular matrix

A = round(10*rand(5)); % creating random matrix

% initialize the L and U matrix
L = zeros(5); 
U = zeros(5);
% append data in L
for i=1:5
  for j =1:5
    if ~(j>i)
      L(i,j) = A(i,j);
    end % end if statement
  end % end j
end % end i
% loop end

% append data in L
for i=1:5
  for j =1:5
    if ~(i>j)
      U(i,j) = A(i,j);
    end % end if statement
  end % end j
end % end i
% loop end

subplot(311), imagesc(A)
subplot(312), imagesc(L)
subplot(313), imagesc(U)