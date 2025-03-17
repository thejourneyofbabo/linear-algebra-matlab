% Define the vector
v = [1, -2]; % 방향 바꾸기

%%%%%%% TODO %%%%%%%
% Use ',' and ';' to define three different reference points (0,0), (2,3), (-1,1) considering the indexing in the loop
reference_points = [0, 0; 2, 3; -1, 1; 5, 4;]; % 포인트 추가
%%%%%%%%%%%%%%%%%%%%

% Create a figure
figure;

% Plot the vector with each reference point
%size(reference_points,1)
for i = 1:size(reference_points, 1)
    quiver(reference_points(i, 1), reference_points(i, 2), v(1), v(2),'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 2);
    hold on;
end


% Set axes properties
axis equal;
xlim([-2, 8]);
ylim([-2, 8]);

% Show grid
grid on;

% Title for the visualization
title('Vector v in various points');

% Axes labels
xlabel('X-axis');
ylabel('Y-axis');

% Legend for vectors with different reference points
legend('Reference1: [0, 0]', 'Reference2: [2, 3]', 'Reference3: [-1, 1]');

