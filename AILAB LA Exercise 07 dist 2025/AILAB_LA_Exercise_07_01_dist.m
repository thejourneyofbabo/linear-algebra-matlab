% Clear workspace, command window, and close all figures
clc; clear; close all;

% Define the path to the CSV file on the desktop
% The directory is 'Desktop/LA_Exercise'
numericalData = readtable('dataMat.csv');

% Calculate the mean of each column
columnMeans = mean(numericalData{:,:}, 1);

% Display the means
disp('Column Means:');
disp(columnMeans);

% Mean-center the data
dataMat = numericalData{:,:} - repmat(columnMeans, size(numericalData, 1), 1);

%%%%%%% TODO %%%%%%%
% Compute the covariance matrix using 'cov(matrix)' function
% Refer to the lecture slide 9
covarianceMatrix = % x(x);
%%%%%%%%%%%%%%%%%%%%

% Visualize the covariance matrix
figure;
imagesc(covarianceMatrix);
colorbar;
title('Data Covariance Matrix');
colormap jet; % Use a colorful colormap
axis equal;
axis tight;