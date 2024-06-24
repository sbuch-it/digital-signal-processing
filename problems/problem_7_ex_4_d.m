% Define the system function coefficients
b = [1/3, 1/3, 1/3];
a = 1;

% Create a frequency range for the plot
omega = linspace(-pi, pi);

% Evaluate H(e^(jω)) for the given frequencies
H = freqz(b, a, omega);

% Plot the magnitude
figure;
subplot(2, 1, 1);
plot(omega, abs(H));
title('Magnitude of H(z) = 1/3(1 + z^{-1} + z^{-2})');
xlabel('Frequency (rad/sample)');
ylabel('Magnitude');

% Plot the phase
subplot(2, 1, 2);
plot(omega, angle(H));
title('Phase of H(z) = 1/3(1 + z^{-1} + z^{-2})');
xlabel('Frequency (rad/sample)');
ylabel('Phase (radians)');