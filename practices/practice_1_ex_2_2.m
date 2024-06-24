%% Listen to the recorded audio

fs = 8000; % sampling frequency (default)

% Get a stored recorder audio in a vector
[electricity,fs] = audioread('./audios/electricity.wav');

% Play the recorded audio at fs
sound(electricity, fs) 
pause(4) % pause 4 seconds
sound(electricity, fs/2) % slow speed and low quality
pause(4) % pause 4 seconds
sound(electricity, fs*2) % faster speed
