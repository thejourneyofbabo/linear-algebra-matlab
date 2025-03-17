clc;
clear;
%%
% 그래프 창 생성
figure;
hold on;

for i = 1:3
    % e0 벡터 (x축 방향) 그리기 (화살표 추가
    quiver(0, 0, 1, 0, i, 'LineWidth', 2, 'MaxHeadSize', 0.3, 'DisplayName', [num2str(i) '*e0']);
    
    % e1 벡터 (y축 방향) 그리기 (화살표 추가)
    quiver(0, 0, 0, 1, i, 'LineWidth', 2, 'MaxHeadSize', 0.3, 'DisplayName', [num2str(i) '*e1']);
end

% 자동으로 모든 DisplayName 속성을 사용하여 레전드 생성
legend('show');

% 축 레이블 추가
xlabel('X-axis');
ylabel('Y-axis');
title('Visualization of scalar multiplication of vectors with arrows');

% 그래프 속성 설정
grid on;
xlim([-1, 4]);
ylim([-1, 4]);
axis equal; % 축 비율을 동일하게 설정
