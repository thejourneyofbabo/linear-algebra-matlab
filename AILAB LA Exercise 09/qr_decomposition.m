% 워크스페이스, 명령 창 정리 및 모든 그림 창 닫기
clc; clear; close all;

% 6x6 크기의 무작위 정수 행렬 A 생성 (1-10 범위)
A = randi(10, 6);

% QR 분해 수행
[Q,R] = qr(A);

% 결과 시각화 - 총 5개의 그림 생성:
% 1. 원본 행렬 A
figure;
imagesc(A);
title('A matrix');
colorbar;
colormap jet;
axis equal tight;

% 2. 직교 행렬 Q
figure;
imagesc(Q);
title('Q Matrix');
colorbar;
colormap jet;
axis equal tight;

% 3. 상삼각 행렬 R
figure;
imagesc(R);
title('R Matrix');
colorbar;
colormap jet;
axis equal tight;

% 4. Q*R (원본 행렬 A와 같아야 함)
figure;
imagesc(Q*R);
title('QR');
colorbar;
colormap jet;
axis equal tight;

% 5. Q^T*Q (단위행렬이어야 함)
figure;
imagesc(Q' * Q);
title('Q^T*Q');
colorbar;
colormap jet;
axis equal tight;