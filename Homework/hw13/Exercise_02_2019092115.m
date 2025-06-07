clc; clear; close all;

nIter = 123;
matsize = 42;
evals = zeros(nIter, matsize);


%%%%%%%%%%%%%%%%% TODO %%%%%%%%%%%%%%%%%
% create the matrices and get their scaled eigenvalues
for i = 1:nIter
    % declear (matsize, matsize) sized matrix A in every iteration
    A = randn(matsize, matsize);
    evals(i, :) = eig(A);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% visualization
% and show in a plot
figure('Position', [100, 100, 600, 600]);

plot(real(evals(:)), imag(evals(:)), 'ko', 'MarkerFaceColor', 'w');
xlim([-1.5, 1.5]);
ylim([-1.5, 1.5]);
xlabel('Real');
ylabel('Imag');
