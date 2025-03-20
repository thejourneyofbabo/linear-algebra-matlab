% Adding vectors

% Using 2D vectors here instead of 3D vectors in the book to facilitate visualization
v = [1, 2];
w = [4, -6];


%%%%%%% TODO %%%%%%%
% Initialize 'vPlusW' as the sum of v and w
vPlusW = v + w;
%%%%%%%%%%%%%%%%%%%%

% print out all three vectors
disp('v:');
disp(v); 
disp('w:');
disp(w);
disp('vPlusW:');
disp(vPlusW);

% Plot vectors
quiver(0, 0, v(1), v(2), 0, 'r', 'LineWidth', 2);
hold on;
quiver(v(1), v(2), w(1), w(2), 0, 'b', 'LineWidth', 2);
quiver(0, 0, vPlusW(1), vPlusW(2), 0, 'g', 'LineWidth', 2);
hold off;
axis equal;
xlabel('x');
ylabel('y');
title('Vector Addition');
legend('v', 'w', 'v + w');
grid on;
