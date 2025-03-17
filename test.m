v = [1, 2];
w = [2, -1];
vPlusW = v + w;

quiver(0, 0, v(1), v(2), 'r', LineWidth=2, MaxHeadSize=0.6, DisplayName='v');
hold on;
quiver(v(1), v(2), w(1), w(2), 'b', LineWidth=2, MaxHeadSize=0.6, DisplayName='w');
quiver(0, 0, vPlusW(1), vPlusW(2), 'g', LineWidth=2, MaxHeadSize=0.6, DisplayName='v + w');
hold off;

legend('show');
grid on;

xlabel('X axis');
xlim([-1.5, 4]);
ylabel('Y axis');
ylim([-1.5, 3]);
title('Visualization of v + w Vector');
axis equal;