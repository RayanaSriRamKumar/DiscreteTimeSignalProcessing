clc; clear; close all;

% Define Sequence 1
x1 = [2 4 6 8];   % Amplitudes
n1 = 0:3;         % Time index for x1

% Define Sequence 2
x2 = [1 1 1];     % Amplitudes
n2 = 2:4;         % Time index for x2

% Find common time index range
n_min = min(min(n1), min(n2));
n_max = max(max(n1), max(n2));
n_common = n_min:n_max;

% Initialize zero-padded sequences
x1_padded = zeros(1, length(n_common));
x2_padded = zeros(1, length(n_common));

% Place x1 in common index range
x1_padded((n1 - n_min + 1)) = x1;

% Place x2 in common index range
x2_padded((n2 - n_min + 1)) = x2;

% Addition
x_add = x1_padded + x2_padded;

% Subtraction
x_sub = x1_padded - x2_padded;

% Plotting
figure('Name', 'Addition and Subtraction of DT Sequences', 'NumberTitle', 'off');

subplot(3,1,1);
stem(n_common, x1_padded, 'filled', 'b');
title('Sequence x_1[n]');
xlabel('n'); ylabel('Amplitude'); grid on;

subplot(3,1,2);
stem(n_common, x2_padded, 'filled', 'r');
title('Sequence x_2[n]');
xlabel('n'); ylabel('Amplitude'); grid on;

subplot(3,1,3);
stem(n_common, x_add, 'filled', 'g');
hold on;
stem(n_common, x_sub, 'filled', 'm');
title('Addition: x_1[n] + x_2[n]  and  Subtraction: x_1[n] - x_2[n]');
xlabel('n'); ylabel('Amplitude');
legend('Addition', 'Subtraction');
grid on;
