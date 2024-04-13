clear;clc;close all
% Criar os incrementos dt
sampling_duration = 1;
sampling_rate = 250;
dt = sampling_duration/sampling_rate;

% Vetor tempo e função Seno 
t = 0:dt:2;
A = 1;
F = 8;
y = sin(2 * pi * F * t);

figure();
plot(t,y);
title('Função Seno');
axis([0 2 -2 2]);

% Função Delta
ft_y = fft(y);
df = (1/dt)/length(ft_y);
freq = (0:length(ft_y)-1)*df;

figure();
plot(freq, abs(ft_y));
title('Função Delta');
axis([0 125 0 300]);
