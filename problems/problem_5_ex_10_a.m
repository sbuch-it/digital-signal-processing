% Define the impulse response coefficients
h = [1, -1, 0, 2];

% Generate a sequence of impulse responses
n = 0:5;  % You can adjust the range as needed
impulse_response = zeros(size(n));
impulse_response(1:length(h)) = h;

% Plot the impulse response
stem(n, impulse_response, 'r', 'LineWidth', 1.5);

xlabel('n');
ylabel('Amplitude');
title('Impulse Response h[n]');
grid on;