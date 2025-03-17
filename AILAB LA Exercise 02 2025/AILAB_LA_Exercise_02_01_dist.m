% Creating a vector as a MATLAB list
asList = [1, 2];


%%%%%%% TODO %%%%%%%
% Creating a row vector
% Generate row vector with same elements of asList.
rowVec = [1, 2]; % row
%%%%%%%%%%%%%%%%%%%%

%%%%%%% TODO %%%%%%%
% Creating a column vector
% Generate row vector with same elements of asList.
colVec = [3; 4]; % column
%%%%%%%%%%%%%%%%%%%%

% Plotting the vectors using quiver
figure;
hold on;

% To prevent overlap, there is a 0.1 offset in the starting points of the vectors. 
quiver(0, 0, asList(1), asList(2), 'r', 'LineWidth', 3, 'AutoScale', 'off', 'MaxHeadSize', 1);
quiver(0, 0, rowVec(1), rowVec(2), 'g', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 1);
quiver(0, 0, colVec(1), colVec(2), 'b', 'LineWidth', 1, 'AutoScale', 'off', 'MaxHeadSize', 1);

% Set axes properties
axis equal;
xlim([-1, 5]);
ylim([-1, 5]);

% Show grid
grid on;

% Title for the visualization
title('Vectors');

% Legend for vectors
legend('asList', 'rowVec', 'colVec');
hold off;