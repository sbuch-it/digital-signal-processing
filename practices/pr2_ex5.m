hn = [1 0 0 -2];
xn = [1 2];
yn = conv(xn, hn)

filter(hn, 1, [1 2 0 0 0])