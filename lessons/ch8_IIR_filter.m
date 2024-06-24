%% IIR Filter

% y[n] = 0.5 y[n-1] - 3x[n] + 2x[n-1]

yy = filter([-3, 2], [1, -0.5])