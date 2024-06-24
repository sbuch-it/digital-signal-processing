%% Voice Capture with MATLAB

fs = 8000; % sampling frequency (default)
N = 8; % number of bits per sample (8, 16 or 24)
C = 1; % number of channels (1 or 2)

% Create an object through which to capture sounds
audioCapture = audiorecorder(fs, N, C);

% Record the word electricity in 3 seconds
recordblocking(audioCapture, 3);

% Store the recorded audio in a vector,
% the size is (8000*3)x1 so 24000x1
electricity = getaudiodata(audioCapture);
whos % see variables and their sizes

% Listen to the recorded audio
sound(electricity, fs)

% Store the recorder audio in a file .wav
audiowrite('./audios/electricity.wav', electricity, fs);
