b = [1 0 0 0 1 1 0 0 0 1];
a = [1];
omega = -pi:(2*pi/1000):pi;
H = freqz(b, a, omega);
plot(omega, H);