clear all; close all;

T = 2; 
w0 = 2*pi/T;
T1 = T/4;
harmax = 80;
Npontos = 10000;
tmin = -2;
tmax = 2;
t = linspace(tmin, tmax, Npontos);
a0 = 2*T1/T;
serie(1,:) = a0*ones(1, Npontos);

for k = 1:harmax,
	ak = sin(k*w0*T1)/(k*pi);
        amk = sin(-k*w0*T1)/(-k*pi);
        serie(k+1,:) = serie(k,:)+ak*exp(j*k*w0*t)+amk*exp(j*(-k)*w0*t);
end

temposquad = [-2 -1.5 -1.5 -0.5 -0.5 0.5 0.5 1.5 1.5 2];
quad = [1 1 0 0 1 1 0 0 1 1];
subplot(321); plot(t, serie(2,:));grid;title('DC + 1^a harmonica');
hold on; plot(temposquad, quad, 'k');

subplot(322); plot(t, serie(4,:));grid;
title('DC + 1^a harmonica + 3^a harmonica');
hold on; plot(temposquad, quad, 'k');

subplot(323); plot(t, serie(8,:));grid;
title('DC + 1^a harmonica + 7^a harmonica');
hold on; plot(temposquad, quad, 'k');

subplot(324); plot(t, serie(20,:));grid;
title('DC + 1^a harmonica + 19^a harmonica');
hold on; plot(temposquad, quad, 'k');

subplot(323); plot(t, serie(80,:));grid;
title('DC + 1^a harmonica + 3^a harmonica');
hold on; plot(temposquad, quad, 'k');
xlabel('t');



