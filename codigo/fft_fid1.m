clc; clear;close all;
% FFT of FID slide 1
F=8;
SR=256;
t2=0.5;
dt=1/SR;
t = 0:dt:2;
s = sin(2*pi*F*t).*exp(-t/t2); % Sinal

figure();
plot(t,s); title('Sinal');

% Transformada 
S = fft(s);
fmax=length(S);
df=(1/dt)/length(S);
freq=(0:length(S)-1)*df; % Definir o eixo das frequências

figure();
plot(freq,abs(S)); title('Transformada');
xlim([0 (1/dt)/2]);
