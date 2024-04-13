clear;clc;close all
% Parâmetros e Função Sinc
F = 1000;
T = 1;
f0 = 50;
t = -T:1/F:T; % Vetor tempo
s = sinc(f0 * t);
figure();
plot(t,s);
title('Função Sinc');
axis([-1 1 -0.5 1.5])

% Transformada de Fourier
S = fftshift(fft(s));
N = length(s);
f = (-N/2:N/2-1)*(F*N);
figure();
plot(f,abs(S));
title('Espectro de Frequência (Sinal Filtrado)');

w=hann(length(s))';
sw = s .* w;

Sw = 0.25*fftshift(fft(sw));
f = (-N/2 : N/2-1) * (F/N);
figure()
plot(f,abs(Sw))
title('Square Wave')
xlim([-f0 f0])