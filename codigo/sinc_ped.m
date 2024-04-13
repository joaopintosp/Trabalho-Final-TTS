clear;clc; close all
% Parâmetros do sinal Sinc
F = 1000;
T = 1;
f0 = 50;
t = -T:1/F:T;   % Vetor de tempo
s = sinc(f0 * t); % Sinal Sinc

S = abs(0.25*fftshift(fft(s))); % Calcula a TF do sinal
N = length(s);
f = (-N/2 : N/2-1) * (F/N); % Vetor de frequências correspondentes

w = hann(length(s))'; % Função de Hann 
sw = s .* w; % Sinal Sinc 'filtro' 
Sw = 0.25*fftshift(fft(sw));
f = (-N/2 : N/2-1) * (F/N); % Frequências correspondentes

figure();
plot(t, s);
title('Sinal Sinc filtrado');
ylim([-0.5 1.5])
figure();
plot(f, abs(Sw));
title('Espectro de Frequência (Sinal filtrado)');
xlim([-125 125]);
figure();
plot(f, abs(S));
title('Square wave');
xlim([-125 125]);