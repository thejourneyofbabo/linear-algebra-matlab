% The proof that |Uw| = |w| comes from expanding the vector magnitude to the dot product:
% |Uw|^2 = (Uw)'(Uw) = w'U'U'w = w'Iw = w'w = |w|^2

% empirical demonstration:
[U, S, V] = ;
w = ;

% print out the norms
disp(norm(U * w));
disp(norm(w));
