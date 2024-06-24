%% Graphical representation of signals

fs = 8000; % sampling frequency (default)

% Get a stored recorder audio in a vector
[electricity,fs] = audioread('./audios/electricity.wav');

% Plot the signal, zoom in, see voice and silence
plot(electricity);
title('Signal of the word electricity');
figure;

% New vector with only a significant sample
voice = electricity(10000:11000);

% Plot the first 100 values in a window
subplot(211), plot(voice(1:100)); % top side
title('Continuous Signal');
subplot(212), stem(voice(1:100)); % bottom side
title('Discrete Signal');

% The word electricity said backwards
electricity_backwards = electricity(end:-1:1);
sound(electricity_backwards, fs);

% A sample of the first 100 so low quality
voice_low = voice(1:2:end);
% sound(voice_low,fs);
% sound(voice_low,fs/2);
