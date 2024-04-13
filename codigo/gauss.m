clear; clc; close all
% Parâmetros e função Gaussiana
media = 25;
std = 1;
A = 0.4;
dt=0.1;
t=0:dt:50;
s = A * exp(-0.5 * ((t - media)/std).^2);
figure();
plot(t,s);
title('Função Gaussiana');
axis([0 50 0 0.5]);

% Transformada de Fourier
S = fftshift(abs(0.5*fft(s))); % Multiplicação por 0.5 para igualar ao apresentado no ppt    
f = 0:0.5:250;
figure();
plot(f,S, Color='#A2142F');
title('Função Gaussiana - TF')
