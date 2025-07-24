clc; clear; close all;

% Define sequences (same length, start from n = 0)
x1 = [2 4 6 8];    % Sequence 1

x2 = [1 3 5 7];    % Sequence 2

% Time index
n = 0:length(x1)-1;

% Element-wise multiplication
x_mul = x1 .* x2;

% Plotting
figure('Name', 'Multiplication of Two DT Sequences (Starting at n = 0)','NumberTitle', 'off');

subplot(3,1,1);
stem(n, x1, 'filled', 'b');
title('Sequence x_1[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,1,2);
stem(n, x2, 'filled', 'r');
title('Sequence x_2[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,1,3);
stem(n, x_mul, 'filled', 'g');
title('Multiplication: x_1[n] * x_2[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

