%% The frequency response of an FIR filter

% Let h[n] = 1/2 x[n] + 1/3 x[n-1] + 1/4 x[n-2]
hn = [1/2 1/3 1/4];
format rational

%% a) Filter's frequency response
b = hn; % b = h[n] for FIR filter
a = 1; % for FIR filter
omega = -pi:(2*pi/120):pi;
H = freqz(b, a, omega);

%% b) Magnitude and phase of the frequency response
plot(omega, H);
title('Frequency response of an FIR filter');
figure;

subplot(211), plot(omega, abs(H));
title('Magnitude of the frequency response');
subplot(212), plot(omega, angle(H));
title('Phase of the frequency response');
figure;

omega0 = [-pi/3 pi/3];
H0 = freqz(b, a, omega0);
H0_magnitude = abs(H0)
H0_phase = angle(H0)

%% d) Output signal for the FIR filter

% Let x[n] = 2^n for 0≤n≤3 otherwise x[n] = 0
xn = [1 2 4 8];
yn = filter(hn, 1, xn)
stem(0:length(yn)-1,yn)
xlim([0 50]);
title('Output signal y[n] for the FIR filter');
figure;

% Let xn_1 = 5 * cos(pi/3 * n - pi/2) for 0≤n≤50
n = 0:50;
xn1 = 5 * cos((pi/3) * n - pi/2);
yn1 = filter(hn, 1, xn1)
stem(n,yn1)
title('Output signal y_1[n] for the FIR filter');
