%Clearworkspace,commandwindow,andcloseallfigures
clc; clear; close all;

%Definethematrix
matrix=[1 2;3 4];

[vecs, vals] = eig(matrix);

disp('Eigenvalues:');
disp(diag(vals));

disp('Eigenvectors:');
disp(vecs);



%Gettheeigenvalues
evals=eig(matrix);

%Displaytheeigenvalues
disp('Eigenvaluesofthematrix:');

disp(evals);