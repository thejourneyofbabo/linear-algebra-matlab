% two vectors
row_vector = [-1 1 1];
column_vector = [3; -2; -2];

%%%%%%% TODO %%%%%%%
% cross product
% Refer to the norm function by executing the following command 'help cross' in the MATLAB command window
cross_product = % xxxxx(xxxxxx_xxxxxx, xxx_xxxxxx);
%%%%%%%%%%%%%%%%%%%%

% result
disp('Cross Product:');
disp(cross_product);

% visualization
figure;
quiver3(0, 0, 0, row_vector(1), row_vector(2), row_vector(3), 'r', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 0.5);
hold on;
quiver3(0, 0, 0, column_vector(1), column_vector(2), column_vector(3), 'b', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 0.5);
quiver3(0, 0, 0, cross_product(1), cross_product(2), cross_product(3), 'g', 'LineWidth', 2, 'AutoScale', 'off', 'MaxHeadSize', 0.5);
legend('row vector', 'column vector', 'cross product');
xlabel('X');
ylabel('Y');
zlabel('Z');
title('cross product');
axis equal;
grid on;
