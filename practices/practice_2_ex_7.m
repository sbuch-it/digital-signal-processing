%% IIR filter design

%% a) FIR filter: -pi/2, pi/2 - IIR filter: none

%% b) FIR filter's system function
% y[n] = x[n] + 0.5 x[n-2]

%% c) Magnitude of the frequency response

% FIR filter: y[n] = x[n] + x[n-2]
b = [1 0 1];
a = [1];
fvtool(b, a);

% IIR filter: y[n] = -0.81 y[n-2] + 0.95 x[n]
b = [0.95];
a = [1 0 0.81];
fvtool(b, a);
