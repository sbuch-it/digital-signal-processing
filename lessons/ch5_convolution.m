%% Convolution - FIR systems

% input sequence
xn = sin(0.07*pi*(0:50));

% impulse response
hn = ones(11,1)/11;

% convolution
yn = conv(hn, xn);