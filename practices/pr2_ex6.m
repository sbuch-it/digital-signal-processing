%% Cascaded FIR filter
n = 0:2*pi:100;
xn = cos((n*pi)/4);

h1 = [1 0 1];
h2 = [-1 0 -1];
y1 = filter(h1, 1, xn);
y2 = filter(h2, 1, y1);

plot(n, abs(y2));
figure;
plot(n, angle(y2));