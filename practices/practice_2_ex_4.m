%% Design of an FIR bandpass filter bank

% L: filter's length
% fs: sample frequency
% fc: bandpass filter center frequency

%% a) Magnitude of the frequency response
L = 10; n = 0:L-1; fc = 1477; fs = 8192;

% Impulse response of an FIR bandpass filter of L points
hn = (2/L) * cos((2*pi * fc * n)/(fs));

omega = -pi:1/1000:pi; % digital frequencies
H = freqz(hn, 1, omega); % frequency response

plot(omega, abs(H));
title('Magnitude of $|H(e^{j\hat{\omega}})|$ an FIR bandpass filter', 'Interpreter', 'latex');
figure;

%% b) Magnitudes of f_c = 1477 Hz and f_c = 852 Hz
fc = 852;
hn1 = 2/L * cos((2*pi * fc * n)/(fs));
H1 = freqz(hn1, 1, omega);

subplot(211), plot(omega, abs(H));
title('Magnitude of the frequency response');
subplot(212), plot(omega, abs(H1));
title('Phase of the frequency response');
figure;

%% d) Filter a continuous signal

% Let x(t) = 5 * cos(2pi*852*t) for 0≤t≤0.5s
% so x[n] = x(n/fs) = 5 * cos(2pi*852*n/fs)
n = 0:1/1000:0.5;
fs = 8192;
xn = 5 * cos(2*pi*852*n/fs);

[h, H, y] = FIRbandpass(fs, fc, L, xn, n);
figure;

%% e) Magnitude of the filter with different lengths

L20 = 20; L40 = 40; L110 = 110;
fc = 697; fs = 8192; omega = -pi:1/1000:pi;

h20 = (2/L)*cos(2*pi*fc*(0:L20-1)/fs);
H20 = freqz(h20,1,omega);
subplot(311), plot(omega, abs(H20));

h40 = (2/L)*cos(2*pi*fc*(0:L40-1)/fs);
H40 = freqz(h40,1,omega);
subplot(312), plot(omega, abs(H40));

h110 = (2/L)*cos(2*pi*fc*(0:L110-1)/fs);
H110 = freqz(h110,1,omega);
subplot(313), plot(omega, abs(H110));
