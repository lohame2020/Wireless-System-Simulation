clear all; close all;
fs = 10000;
t = 0:1/fs:1.5;
x1 = sawtooth(2*pi*50*t);
x2 = square(2*pi*50*t)

noise = awgn(t, 0.1);

coding = fft(x2);


result = coding + noise;


rcoding = ifft(result)

subplot(211)
plot(t,x2)
axis([0 0.2 -1.2 1.2]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Square Periodic Wave');


subplot(212)
plot(t,rcoding)
axis([0 0.2 -1.2 1.2]);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Square Periodic Wave on Additive Channel');


