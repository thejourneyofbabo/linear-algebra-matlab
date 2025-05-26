% Clear workspace, command window, and close all figures
clc; clear; close all;

% Data
Weight = [70,86,63,62,68,82,60,75,65,80,58,73,70,88,64,69,66,79,61,76]';
Parent_height = [177,190,180,172,174,186,170,180,168,185,172,179,176,192,174,181,169,187,171,182]';
Individual_height = [175,181,159,165,172,183,160,175,167,180,158,172,170,185,162,173,168,181,159,177]';

%%%%%%% TODO %%%%%%%
% Design matrix
X = [ones(length(Weight),1), Weight, Parent_height];
% X = [Weight, Parent_height];

y = Individual_height;

% Compute the left-inverse of X
X_leftinv = (X'*X)^-1 * X';

% Calculate beta
beta = X_leftinv * y;

% Predict y values using beta
y_pred = X*beta;
%%%%%%%%%%%%%%%%%%%%

% Display beta
disp("Estimated beta:");
disp(beta);

% Plot
figure;
hold on;
grid on;
sample_idx = 1:length(y);

plot(sample_idx, y, 'ko-', 'LineWidth', 1.5, 'DisplayName', 'Actual y');
plot(sample_idx, y_pred, 'b*-', 'LineWidth', 1.5, 'DisplayName', 'Predicted y');

for i = 1:length(y)
    plot([i, i], [y(i), y_pred(i)], 'r--', 'LineWidth', 1, 'HandleVisibility', 'off');
end

title('GLM: Predict Height from Weight and Parent Height');
xlabel('Sample Index');
ylabel('Height (cm)');
legend('Location', 'best');
hold off;
