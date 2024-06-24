% Define the sequence
n = 0:9;
y = [1, 5, -3, 2.5, 0, 0, 0, 0, 4, 0];

% Plot the sequence using stem
stem(n, y, 'b', 'Marker', 'o', 'LineStyle', 'none');
title('Plot of y[n] = δ[n] + 5δ[n-1] - 3δ[n-2] + 2.5δ[n-3] + 4δ[n-8]');
xlabel('n');
ylabel('y[n]');
grid on;