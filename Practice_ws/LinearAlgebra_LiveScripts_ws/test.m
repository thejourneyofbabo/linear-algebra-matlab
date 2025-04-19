A = [[1 4]; [2 8]];
Apinv = pinv(A);
AApinv = A*Apinv;
disp("Apinv");
disp(Apinv);
disp("AApinv");
disp(AApinv);
