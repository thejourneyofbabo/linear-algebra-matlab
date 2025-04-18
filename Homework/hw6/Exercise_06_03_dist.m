% Clear workspace, command window, and close all figures
clc; clear; close all;

%%%%%%%%%%%%%%%%% TODO %%%%%%%%%%%%%%%%%
% matrix sizes and rank
M = 10;
N = 7;
r = 6;

% compute the four matrices
A = randn(M, r) * randn(r, N);
At = A'; % express A transpose using variable A
AtA = A' * A; % express A transpose using variable A
AAt = A * A'; % express A transpose using variable A

% calculate their ranks (A, At, AtA, AAt)
r_A = rank(A);
r_At = rank(At);
r_AtA = rank(AtA);
r_AAt = rank(AAt);

% print their ranks
% disp('ranks (A, At, AtA, AAt): ');
% disp([r_A r_At r_AtA r_AAt]);
fprintf('Rank of A: %d\n', r_A);
fprintf('Rank of A transpose: %d\n', r_At);
fprintf('Rank of A transpose * A: %d\n', r_AtA);
fprintf('Rank of A * A transpose: %d\n', r_AAt);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%