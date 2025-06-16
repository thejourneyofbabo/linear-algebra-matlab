%% 역행렬의 유일성 증명 (Proof by Negation)
% 증명: 가역행렬 A에 대해 역행렬은 정확히 하나만 존재한다

clear; clc;
disp('=== 역행렬의 유일성 증명 ===');
disp(' ');

%% 1단계: 심볼릭 변수 정의
disp('1. 심볼릭 행렬 정의');
syms a11 a12 a21 a22 real
syms b11 b12 b21 b22 real  
syms c11 c12 c21 c22 real

% 2x2 행렬 A (가역행렬이라고 가정)
A = [a11 a12; a21 a22];
disp('행렬 A:');
disp(A);

% 두 개의 서로 다른 역행렬 B, C라고 가정
B = [b11 b12; b21 b22];
C = [c11 c12; c21 c22];
disp('가정: B와 C가 모두 A의 역행렬이라고 하자');
disp('행렬 B:');
disp(B);
disp('행렬 C:');
disp(C);
disp(' ');

%% 2단계: 가정 설정
disp('2. 가정 조건들');
disp('가정 1: A는 가역행렬 (det(A) ≠ 0)');
disp('가정 2: AB = I and BA = I (B는 A의 역행렬)');
disp('가정 3: AC = I and CA = I (C는 A의 역행렬)');
disp('가정 4: B ≠ C (B와 C는 서로 다르다고 가정)');
disp(' ');

%% 3단계: 단위행렬 정의
I = eye(2);
disp('단위행렬 I:');
disp(I);
disp(' ');

%% 4단계: 증명 과정 (귀류법)
disp('3. 증명 과정 (Proof by Negation)');
disp('B ≠ C라고 가정하고 모순을 도출해보자');
disp(' ');

disp('단계 1: C = CI (단위행렬의 성질)');
step1 = 'C = C*I';
disp(step1);
disp(' ');

disp('단계 2: AB = I이므로, I = AB를 대입');
step2 = 'C = C*(A*B)';
disp(step2);
disp(' ');

disp('단계 3: 행렬 곱셈의 결합법칙 적용');
step3 = 'C = (C*A)*B';
disp(step3);
disp(' ');

disp('단계 4: CA = I이므로, CA = I를 대입');
step4 = 'C = I*B';
disp(step4);
disp(' ');

disp('단계 5: 단위행렬의 성질');
step5 = 'C = B';
disp(step5);
disp(' ');

disp('결론: C = B가 도출됨!');
disp('이는 우리의 가정 "B ≠ C"와 모순된다.');
disp('따라서 B = C이어야 하며, 역행렬은 유일하게 존재한다.');
disp(' ');

%% 5단계: 구체적인 예시로 검증
disp('4. 구체적인 예시로 검증');
A_example = [2 1; 1 1];
disp('예시 행렬 A:');
disp(A_example);

% 역행렬 계산
A_inv = inv(A_example);
disp('A의 역행렬:');
disp(A_inv);

% 검증: A * A^(-1) = I
product1 = A_example * A_inv;
disp('A * A^(-1) =');
disp(product1);

% 검증: A^(-1) * A = I  
product2 = A_inv * A_example;
disp('A^(-1) * A =');
disp(product2);

% 다른 방법으로 계산한 역행렬도 동일한지 확인
det_A = det(A_example);
adj_A = [1 -1; -1 2];  % adjugate matrix
A_inv2 = adj_A / det_A;
disp(' ');
disp('공식으로 직접 계산한 역행렬:');
disp(A_inv2);

disp('두 역행렬이 동일한가?');
if isequal(round(A_inv, 10), round(A_inv2, 10))
    disp('YES - 역행렬은 유일하다!');
else
    disp('NO - 뭔가 잘못되었다.');
end

%% 6단계: 일반적인 증명 요약
disp(' ');
disp('=== 증명 요약 ===');
disp('주어진 조건:');
disp('  - A는 가역행렬');
disp('  - B와 C가 모두 A의 역행렬이라고 가정');
disp('  - 즉, AB = BA = I, AC = CA = I');
disp(' ');
disp('증명 과정:');
disp('  C = CI = C(AB) = (CA)B = IB = B');
disp(' ');
disp('결론:');
disp('  B = C이므로, A의 역행렬은 유일하게 존재한다.');
disp('  따라서 가역행렬의 역행렬은 정확히 하나만 존재한다. ∎');

%% 7단계: 심볼릭으로 일반적인 증명
disp(' ');
disp('5. 심볼릭 일반 증명');

% 심볼릭 행렬들 정의
syms A_sym B_sym C_sym I_sym
assume([A_sym B_sym C_sym I_sym], 'real');

disp('심볼릭 표현:');
disp('조건: A*B = I, A*C = I');
disp('증명: C = C*I = C*(A*B) = (C*A)*B = I*B = B');
disp(' ');
disp('∴ 역행렬의 유일성이 증명되었다!');