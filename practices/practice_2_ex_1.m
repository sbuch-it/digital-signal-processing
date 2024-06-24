%% The output of an FIR filter in the time domain

% Let x[n] = 2^n for 0<=n<=3 otherwise x[n] = 0
xn_conv = [1 2 4 8];

% Let h[n] = 1/2 x[n] + 1/3 x[n-1] + 1/4 x[n-2]
hn = [1/2 1/3 1/4];
format rational

%% a) Output of an FIR filter using conv command
yn_conv = conv(xn_conv, hn) % y[n] = x[n] * h[n]

%% b) Plot the output using conv command
stem(yn_conv)
title('Convolution using conv without starting point');
figure;

%% c) Plot the output for a time vector n
n = 0:length(yn_conv)-1; % the starting point is zero
stem(n, yn_conv)
title('Convolution using conv with starting point zero');
figure;

%% d) Output of an FIR filter using filter command
b = hn; % b = h[n] for FIR filter
a = 1; % for FIR filter
xn_filter = [1 2 4 8 0 0]; % input signal
yn_filter = filter(b, a, xn_filter)
stem(n, yn_filter)
title('Convolution using filter command');
figure;

%% e) Let try with another input signal
xn2_conv = [0 0 1 0 0 3];
xn2_filter = [0 0 1 0 0 3 0 0];
yn2_conv = conv(xn2_conv, hn)
yn2_filter = filter(b, a, xn2_filter)
stem([0:length(yn2_filter)-1], yn2_filter)
title('Convolution of h[n] and x[n] = x[n-2] + 3 x[n-5]');
