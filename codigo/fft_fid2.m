clc; clear; close all;
% FFT of FID slide 2
F=8;
SR=256;
t2=0.1;
dt=1/SR;
t = 0:dt:2;
s = sin(2*pi*F*t).*exp(-t/t2);

figure();
plot(t,s); title('Sinal');
axis([0 2 -2 2]);

%Transformada
S = fft(s);
fmax=length(S);
df=(1/dt)/length(S);
freq=(0:length(S)-1)*df; % Definir o eixo das frequências

figure();
plot(freq,abs(S)); title('Transformada');
xlim([0 (1/dt)/2]);