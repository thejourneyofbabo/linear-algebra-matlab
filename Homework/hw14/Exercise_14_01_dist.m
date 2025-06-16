% Create a symmetric matrix
A = randn(5,5);
A = A' * A;

% Eigendecomposition
[evecs, evals] = ;

% Sorting eigenvalues and eigenvectors
[evals, sidx] = ;
evecs = ;

% SVD
[U, S, V] = ;

% Compare the eigenvalues and singular values
disp('Eigenvalues and singular values:');
disp([evals, diag(S)]);

% Now compare the left and right singular vectors
disp('Left-Right singular vectors (should be zeros)')
disp(round(U - V, 10)) % remember to compare V not V^T!

% Then compare singular vectors with eigenvectors
disp('Singular vectors - eigenvectors (should be zeros)')
D = zeros(size(U));
tol = 1e-9;

for i = 1:size(U,2)
    d1 = U(:,i) - evecs(:,i);
    d2 = U(:,i) + evecs(:,i);
    
    if norm(d1) < norm(d2)
        diff = d1;
    else
        diff = d2;
    end

    diff(abs(diff) < tol) = 0;
    
    D(:,i) = diff;
end
disp(D);
