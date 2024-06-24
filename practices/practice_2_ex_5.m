%% Decode a DTMF signal with bandpass filter banks

%% a)
L = 110;

%% b) FIR bandpass filters

fs = 8192;
fc = [697 770 852 941 1209 1336 1477];
[h, H] = FIRbandpassBank(fs, fc, L);
