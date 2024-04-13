clear; clc; close all
dt = 0.1;
t = 0:dt:10;
% Função Exponencial
s = exp(-t);
S = fft(s);
Sr = real(S);
Si = imag(S);
Sabs = abs(S);

figure();
plot(t,s); title('Sinal Exponencial');
figure();
plot(fftshift(Sabs)); title('Transformada de Fourier Lorentzian')
xlim([0, length(Sabs)]);