% Define the signal parameters
n = -200:200; % adjust the range as needed
x = 5 * cos(pi/4 * n) + 3 * cos(pi/2 * n - pi/2);

% Compute the DTFT
omega = linspace(-2*pi, 2*pi, length(n));
X = dtft(x, n, omega);

% Plot the magnitude spectrum
plot(omega, abs(X), 'LineWidth', 1.5);
%title('Magnitude Spectrum of x[n]');
xlabel('$\hat{\omega}$ [rad]', 'Interpreter', 'latex');
ylabel('$X(\hat{\omega})$', 'Interpreter', 'latex');
grid on;

% Customize horizontal axis labels in terms of pi
xticks([-2*pi, -7*pi/4 , -3*pi/2, -pi, -pi/2, -pi/4, 0, pi/4, pi/2, pi, 3*pi/2, 7*pi/4, 2*pi]);
xticklabels({'-2\pi', '-7\pi/4', '-3\pi/2', '-\pi', '-\pi/2', '-\pi/4', '0', '\pi/4', '\pi/2', '\pi', '3\pi/2', '7\pi/4', '2\pi'});
xlim([-2*pi, 2*pi]);

% Add text annotations to spectrum lines
text(-pi/4, 1050, '5/2', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
text(-pi/2, 650, '3/2 e^{j\pi/2}', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
text(-3*pi/2, 650, '3/2 e^{-j\pi/2}', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
text(-7*pi/4, 1050, '5/2', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
text(pi/4, 1050, '5/2', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
text(pi/2, 650, '3/2 e^{-j\pi/2}', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
text(3*pi/2, 650, '3/2 e^{j\pi/2}', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
text(7*pi/4, 1050, '5/2', 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');
