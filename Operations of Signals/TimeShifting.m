clc; clear; close all;

% Original sequence
x = [2 4 6 8 10];      % Sample amplitudes
n = 0:length(x)-1;     % Time index starting at 0

% Shift amount
k = 2;      % Positive: delay (right shift), Negative: advance (left shift)

% Time shifting operation
if k >= 0
    % Delay: insert k zeros at beginning
    x_shifted = [zeros(1, k), x];
    n_shifted = 0:length(x_shifted)-1;
else
    % Advance: remove first |k| elements, or pad with zeros
    k = abs(k);
    x_shifted = x(k+1:end); 
    n_shifted = 0:length(x_shifted)-1;
end

% Plot original sequence
subplot(2,1,1);
stem(n, x, 'filled', 'b', 'LineWidth', 2);
title('Original Sequence x[n]');
xlabel('n'); ylabel('Amplitude'); grid on;

% Plot shifted sequence
subplot(2,1,2);
stem(n_shifted, x_shifted, 'filled', 'r', 'LineWidth', 2);
title(['Shifted Sequence x[n ', sprintf('%+d', -k), ']']);
xlabel('n'); ylabel('Amplitude'); grid on;
