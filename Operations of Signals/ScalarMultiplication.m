clc; clear; close all;

% Original DT sequence
x = [1 2 3 4 3 2 1];
n = 0:length(x)-1;

% Scalar values
a1 = 2;     % Amplification
a2 = 0.5;   % Attenuation

% Scalar multiplication
x_amp = a1 * x;   % Amplified signal
x_att = a2 * x;   % Attenuated signal

% Plotting
figure('Name', 'Scalar Multiplication of DT Sequence', 'NumberTitle', 'off');

subplot(3,1,1);

stem(n, x, 'filled', 'b', 'LineWidth', 2);
title('Original Sequence x[n]');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,1,2);
stem(n, x_amp, 'filled', 'r', 'LineWidth', 2);
title(['Amplified Sequence a \cdot x[n],  a = ', num2str(a1)]);
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(3,1,3);
stem(n, x_att, 'filled', 'g', 'LineWidth', 2);
title(['Attenuated Sequence a \cdot x[n],  a = ', num2str(a2)]);
xlabel('n'); ylabel('Amplitude');
grid on;

