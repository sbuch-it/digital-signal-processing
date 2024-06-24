%% DTMF b)
fs=8192;
t=0:(1/fs):0.5; % samples = 8192*0.5
x=cos(2*pi*770*t)+cos(2*pi*1209*t);
plot(t,x); title('x(t)'); figure;

%% DTMF c)
stem(0:99,x(1:100)); title('x[n]'); figure;

%% DTMF d)
sound(x,fs);

%% DTMF g)
fs=1979;
t=0:(1/fs):0.5;
y=cos(2*pi*770*t)+cos(2*pi*1209*t);
plot(t,y); title('y(t)');

%% DTMF h)
sound(x,fs); sound(y,fs); % they are different