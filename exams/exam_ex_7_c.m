% Define the transfer function coefficients
numerator_coeffs = [1 0 0 0 0 0 1]; % Coefficients for X(z)
denominator_coeffs = [1]; % Coefficients for Y1(z)

% Plot the zero-pole diagram
figure;
zplane(numerator_coeffs, denominator_coeffs);
title('Zero-Pole Diagram of y_1[n] = x[n] + x[n-5]');
xlabel('Re');
ylabel('Im');
grid on;