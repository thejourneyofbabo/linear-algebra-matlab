%% Figure 1

%%%%% ToDo %%%%%
v =;
w =;
vPw =;
%%%%%%%%%%%%%%%%

figure;
hold on;

quiver(0, 0, v(1), v(2), 'r', "Autoscale", "off", "LineWidth", 2, "MaxHeadSize", 0.5);
quiver(v(1), v(2), w(1), w(2), 'b', "Autoscale", "off", "LineWidth", 2, "MaxHeadSize", 0.5);
quiver(0, 0, vPw(1), vPw(2), 'g', "Autoscale", "off", "LineWidth", 2, "MaxHeadSize", 0.5);

axis equal;
xlim([-1, 4]);
ylim([-1, 3]);

grid on;

text(v(1)/2, v(2)/2, "v",'HorizontalAlignment', 'center');
text(v(1)+w(1)/2, v(2)+w(2)/2, "w",'HorizontalAlignment', 'center');
text(vPw(1)/2, vPw(2)/2, "v + w",'HorizontalAlignment', 'center');

%%%%%%%%%%%%%%%% ToDo %%%%%%%%%%%%%%%%
xlabel;
ylabel;
title;
legend;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Figure 2

%%%%% ToDo %%%%%
v = ;
w = ;
vMw = ;
%%%%%%%%%%%%%%%%

figure;
hold on;

quiver(0, 0, v(1), v(2), 'r', "Autoscale", "off", "LineWidth", 2, "MaxHeadSize", 0.5);
quiver(0, 0, w(1), w(2), 'b', "Autoscale", "off", "LineWidth", 2, "MaxHeadSize", 0.5);
quiver(w(1), w(2), vMw(1), vMw(2), 'g', "Autoscale", "off", "LineWidth", 2, "MaxHeadSize", 0.5);

axis equal;
xlim([-2, 3]);
ylim([-2, 2.5]);

grid on;

text(v(1)/2, v(2)/2, "v",'HorizontalAlignment', 'center');
text(w(1)/2, w(2)/2, "w",'HorizontalAlignment', 'center');
text(w(1)+vMw(1)/2, w(2)+vMw(2)/2, "v - w",'HorizontalAlignment', 'center');

%%%%%%%%%%%%%%%% ToDo %%%%%%%%%%%%%%%%
xlabel;
ylabel;
title;
legend;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
