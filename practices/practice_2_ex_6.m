%% First-order IIR filters

%% a) Analyze the first-order filter

% y[n] = 0.9 y[n-1] + x[n] + 0.81 x[n-1]

% b: coefficients of the numerator of H(z)
b = [1 0.81];

% a: coefficients of the denominator of H(z)
a = [1 -0.9];

% Analyze the filter by difference equation
fvtool(b, a)

%% b) Filter used in a continuous-time system

% In the menu, click on magnitude response

% In the menu, click on Sampling Property and set
% the value of the sample rate as fs = 8Hz

% In the menu, click on Analysis Parameters and set
% Frequency Range to [0, fs/2]
% Magnitude Display: Magnitude [dB]

% The bandwidth at 3dB expressed in Hz is obtained
% pointed in the graph the value f = 25-3 = 22 Hz
