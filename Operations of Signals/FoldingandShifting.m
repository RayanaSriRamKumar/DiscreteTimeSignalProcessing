clc; clear; close all;

% Original DT sequence
x = [2 3 5 4 1];         % Sample amplitudes
n = -2:2;                % Time index from -2 to 2 (length must match x)

% Shift amount
k = 3;                   % Shift after folding: x[-n + k]
% --- Folding ---
x_folded = fliplr(x);     % x[-n]
n_folded = -fliplr(n);    % Folded time axis: -n

% --- Shifting the folded sequence ---
n_shifted = n_folded + k; % Apply shift: -n + k

% --- Plotting ---
figure('Name', 'Combined Folding and Shifting of DT Sequence', 'NumberTitle', 'off');

subplot(3,1,1);
stem(n, x, 'filled', 'b', 'LineWidth', 2);
title('Original Sequence x[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,1,2);
stem(n_folded, x_folded, 'filled', 'r', 'LineWidth', 2);
title('Folded Sequence x[-n]');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,1,3);
stem(n_shifted, x_folded, 'filled', 'm', 'LineWidth', 2);
title(['Folded & Shifted Sequence x[-n + ', num2str(k), ']']);
xlabel('n'); ylabel('Amplitude');
grid on;


