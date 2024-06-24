%% Pole-zero plot

% y[n] = 0.9 y[n-1] + x[n] + 0.81 x[n-1]

b = [1 0.81];
a = [1 -0.9];
fvtool(b, a)