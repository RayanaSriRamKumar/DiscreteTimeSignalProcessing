clc; clear; close all;
% Time vector (for continuous domain simulation)
t = -5:0.01:5;

%%%(1)Generation of CT Unit ImpulseFunction 
impulse = zeros(size(t));
impulse(t == 0) = 1; % approximate delta(t) as 1 at t=0

subplot(3,2,5);
stem(t, impulse, 'k', 'LineWidth', 2, 'Marker', 'none');
title('Impulse Signal ?(t) (approximated)');
xlabel('Time t'); 
ylabel('Amplitude');
grid on;
axis([-1 1 0 1.2]);

%%%(2)Generation of CT Unit step function 

u = double(t >= 0); % u(t) = 1 for t >= 0, else 0

subplot(3,2,1);
plot(t, u, 'b', 'LineWidth', 2);
title('Unit Step Signal u(t)');
xlabel('Time t'); 
ylabel('Amplitude');
grid on; 
axis tight;

%%%(3)Generation of CT Unit ramp function 

r = t .* (t >= 0); % r(t) = t for t >= 0, else 0

subplot(3,2,2);
plot(t, r, 'r', 'LineWidth', 2);
title('Ramp Signal r(t)');
xlabel('Time t'); 
ylabel('Amplitude');
grid on;
axis tight;

