%% Frequency response

omega = -pi:(pi/500):pi;
bb = ones(1,11)/11;
HH = freqz(bb,1,omega);
subplot(2,1,1),  plot(omega,abs(HH))
subplot(2,1,2),  plot(omega,angle(HH))