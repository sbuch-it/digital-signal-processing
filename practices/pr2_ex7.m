%% Pole-zero plot

% y[n] = x[n] - x[n-2] - y[n-2]

b = [1 0 -1];
a = [1 0 1];
fvtool(b, a);