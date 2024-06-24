%% Generation of musical notes - Harmonic tones

fs = 44100; % sampling frequency
fo = 440; % foundamental frequency
phi = 0; % phase
time = 5; % 5 seconds

t = 0:(1/fs):time; % time interval
A = 0.3; % amplitude of the signal

p = []; % clear the vector
% k = [1 3:6] for removing the first harmonic

for k = 1:3
    p(k,:) = A*cos(2*pi*k*fo*t+phi)/k;
end

x = sum(p);

sound(x,fs);
plot(t(1:500),x(1:500));
xlabel('t, s');
ylabel('x(t), v');
