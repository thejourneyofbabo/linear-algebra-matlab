%% Dot product
v = [0, 1, 2];
u = [13, 21, 34];

s = 10;

%%%%%%% TODO %%%%%%%
% scalar multiplcate dot product
% Refer to the norm function by executing the following command 'help dot' in the MATLAB command window
dot_product = dot(u, v); %(v,u), (vT,u), (u,v)
scalar_multiplicated = dot(s*v, u); %(s*u, v)
%%%%%%%%%%%%%%%%%%%%

% show the result
disp('Dot Product:');
disp(dot_product);
disp('Scala multiplicated:');
disp(scalar_multiplicated);
