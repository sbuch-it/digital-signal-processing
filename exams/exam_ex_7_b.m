% Define the normalized angular frequency
omega_hat = linspace(0, 2*pi, 1000);

% Frequency response equation
H1 = 1 + exp(-1j*5*omega_hat);

% Plot one period of the magnitude response
figure;
subplot(2,1,1);
plot(omega_hat, abs(H1));
title('Magnitude Response');
xlabel('$\hat{\omega}$', 'Interpreter', 'latex');
ylabel('$|H_1(e^{j\hat{\omega}})|$', 'Interpreter', 'latex');
grid on;

% Plot one period of the phase response
subplot(2,1,2);
plot(omega_hat, angle(H1));
title('Phase Response');
xlabel('$\hat{\omega}$', 'Interpreter', 'latex');
ylabel('$\angle H_1(e^{j\hat{\omega}})$', 'Interpreter', 'latex');
grid on;