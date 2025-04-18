% Clear workspace, command window, and close all figures
clc; clear; close all;

%%%%%%%%%%%%%%%%% TODO %%%%%%%%%%%%%%%%%
% Make a matrix with specified size and rank
M = 10;
N = 7;
r = 6;

% consider A 
A = randn(M,r) * randn(r,N);

% calculate matrix A size and rank
size_m = size(A);
rank_m = rank(A);
% display size and rank
disp('Matrix A size:');
disp(size_m);
disp('Rank A:');
disp(rank_m);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%