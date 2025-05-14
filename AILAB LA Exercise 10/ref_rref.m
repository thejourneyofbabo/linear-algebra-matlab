clc; clear; close all;

A = [1 1 2 3 4;
     2 6 4 6 3;
     3 3 8 12 17];

[~, ref_A] = lu(A);

disp("A");
disp(A);
disp("ref_A");
disp(ref_A);

rref_A = rref(A);

disp("rref_A");
disp(rref_A);