clc; clear; close all;

% Define sequence and time index centered at n = 0
x = [3 5 2 4 1];           % Example sequence
n = -2:2;                  % Time index from -2 to 2 (length must match x)

% Time reversal of x[n]
x_rev = fliplr(x);         % x[-n]

% Compute even and odd parts
x_even = 0.5 * (x + x_rev);
x_odd  = 0.5 * (x - x_rev);

% Plot original sequence
subplot(3,1,1);
stem(n, x, 'filled', 'b', 'LineWidth', 2);
title('Original Sequence x[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

% Plot even part
subplot(3,1,2);
stem(n, x_even, 'filled', 'g', 'LineWidth', 2);
title('Even Part of Sequence');
xlabel('n'); ylabel('Amplitude');
grid on;

% Plot odd part
subplot(3,1,3);
stem(n, x_odd, 'filled', 'r', 'LineWidth', 2);
title('Odd Part of Sequence');
xlabel('n'); ylabel('Amplitude');
grid on;
