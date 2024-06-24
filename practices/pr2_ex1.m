%% Convolution

% h[n] = x[n] + x[n-2] + 4 x[n-3] + 2 x[n-4] + x[n-6]
hn = [1 0 1 4 2 0 1];

xn = [1 0 0 0 -3];

conv(xn, hn)