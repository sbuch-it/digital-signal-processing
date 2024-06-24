%% Vector manipulation - Single Word Dictionary

fs = 8000; % sampling frequency (default)

[give, fs] = audioread('./audios/give.wav');
[me, fs] = audioread('./audios/me.wav');
[a, fs] = audioread('./audios/a.wav');
[call, fs] = audioread('./audios/call.wav');
[please, fs] = audioread('./audios/please.wav');

s1 = zeros(1, round(fs*0.1)); % silence
s2 = zeros(1, round(fs*0.2)); % silence

sentence = [give.' s1 me.' s1 a.' s1 call.' s2 please.'];
sound(sentence, fs);
