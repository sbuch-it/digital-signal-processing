%% 2.4 Sampling and Plotting Sinusoids

% We want to plot a continuous function
% x(t) = 20 cos(2pi(40)t - 0.4pi)

% We must evaluate x(t) at a discrete set of times,
% we pick a uniform set t_n = n T_s where n is an integer

% From x(t), we obtain the sequence of samples
% x(n T_s) = 20 cos(2pi(40)n T_s - 0.4pi)

Ts1 = 0.005;
n1 = (-0.03*(1/Ts1)):(0.04*(1/Ts1));
tn1 = n1 * Ts1;
xn1 = 20 * cos(2*pi*40*tn1 - 0.4*pi);
plot(tn1, xn1);
title('Samples of Sinusoid: T_s = 0.005s');
figure;

Ts2 = 0.0025;
n2 = (-0.03*(1/Ts2)):(0.04*(1/Ts2));
tn2 = n2 * Ts2;
xn2 = 20 * cos(2*pi*40*tn2 - 0.4*pi);
plot(tn2, xn2);
title('Samples of Sinusoid: T_s = 0.0025s');
figure;

Ts3 = 0.0005;
n3 = (-0.03*(1/Ts3)):(0.04*(1/Ts3));
tn3 = n3 * Ts3;
xn3 = 20 * cos(2*pi*40*tn3 - 0.4*pi);
plot(tn3, xn3);
title('Samples of Sinusoid: T_s = 0.0005s');
