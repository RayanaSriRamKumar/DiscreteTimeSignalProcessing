clc; clear; close all;

% Define the original sequence and its time index
x = [2 3 5 4 1];       % Amplitudes
n = -2:2;              % Corresponding time indices

% Time reversal: x[-n]
x_rev = fliplr(x);     % Flip the sequence
n_rev = -fliplr(n);    % Flip and negate the time indices

% Plot original sequence
subplot(2,1,1);
stem(n, x, 'filled', 'b', 'LineWidth', 2);
title('Original Sequence x[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

% Plot time-reversed sequence
subplot(2,1,2);
stem(n_rev, x_rev, 'filled', 'r', 'LineWidth', 2);
title('Time-Reversed Sequence x[-n]');
xlabel('n'); ylabel('Amplitude');
grid on;

