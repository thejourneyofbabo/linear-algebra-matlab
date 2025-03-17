%% Vector Norm
v = [-2, 3];


%%%%%%% TODO %%%%%%%
% Use function 'norm' to Calculate L1 norm and L2 norm of the vector v
% Refer to the norm function by executing the following command 'help norm' in the MATLAB command window
% Norm of vector
v_L1_norm = norm(v, 1);
v_L2_norm = norm(v, 2);
%%%%%%%%%%%%%%%%%%%%

% Display norm of vector

disp(['Vector L1 norm: ', num2str(v_L1_norm)]);
disp(['Vector L2 norm: ', num2str(v_L2_norm)]);
