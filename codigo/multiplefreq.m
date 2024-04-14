clear; clc; close all;
% Measuring Multiple Frequencies
f1 = 80;
f2 = 90;
f3 = 100;
SR = 256;
T1 = 1;
T2 = 0.5;
T3 = 0.25;
dt = 1 / SR;
t = 0:dt:2;
s = sin(2 * pi * f1 * t) .* exp((-t) / T1) + sin(2 * pi * f2 * t) .* exp((-t) / T2) + sin(2 * pi * f3 * t) .* exp((-t) / T3);

% Transformada de Fourier
S = fft(s);
f = (0:length(s) - 1) * SR / length(s);
figure();
subplot(2, 1, 1);
plot(t, s);
title('Sinal');
subplot(2, 1, 2);
plot(f, abs(S));
title('Transformada');
xlim ([0 130]);
ylim ([0 120]);