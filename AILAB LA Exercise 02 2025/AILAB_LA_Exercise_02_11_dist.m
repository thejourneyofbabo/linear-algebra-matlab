%% The dot product is distributive

% some random vectors
v = [0, 1, 2];
w = [3, 5, 8];
u = [13, 21, 34];

% two ways to compute
res1 = dot(v, w + u);

%%%%%%% TODO %%%%%%%
% Perform the dot product so that res1 and res2 become equal.
res2 = dot(v, w) + dot(v, u);
%%%%%%%%%%%%%%%%%%%%

% show that they are equivalent
disp('res1:');
disp(res1);
disp('res2:');
disp(res2);
