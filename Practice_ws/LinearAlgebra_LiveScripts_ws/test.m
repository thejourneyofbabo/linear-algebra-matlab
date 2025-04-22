close all; clc; clear;

y = -1:0.1:1;
x = zeros(size(y));

points = [x; y];

theta = -pi/5;

T = [cos(theta), sin(theta);
    -sin(theta), cos(theta)];

r_points = T * points;

figure;
hold on;

plot(points(1,:), points(2,:), 'b.', DisplayName='Original Points', MarkerSize=15);

plot(r_points(1,:), r_points(2,:), 'r.', DisplayName='Rotated Points', MarkerSize=15);

grid on;
xlim([-1 1]);
ylim([-1 1]);
