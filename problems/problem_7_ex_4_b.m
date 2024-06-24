% Define the coefficients of the system function
b = [1/3, 1/3, 1/3];
a = 1; % Denominator coefficients, set to 1 for a simple system function

% Plot poles and zeros
zplane(b, a);
title('Poles and Zeros of H(z) = 1/3(1 + z^{-1} + z^{-2})');
xlabel('Real');
ylabel('Imaginary');