clc; clear; close all;
% Efeito de mudar a duração de amostragem
F=8;
SR=256;
T2=0.5;
dt=1/SR;
t1 = 0:dt:1;
t2 = 0:dt:2;
s1 = sin(2*pi*F*t1).*exp(-t1/T2);
s2 = sin(2*pi*F*t2).*exp(-t2/T2);

figure();
hold on
plot(t1,s1 ,'o', Color = '#0000FF');
plot(t2,s2,'+', Color='#77AC30');
hold off
legend('ST=1','ST=2'); title('Sinal'); 
axis([0 2 -2 2]);

S1 = fft(s1);
S2 = fft(s2);
fmax1=length(S1);
fmax2=length(S2);
df1=(1/dt)/length(S1);
df2=(1/dt)/length(S2);
freq1=(0:length(S1)-1)*df1; % Definir o eixo das frequências
freq2=(0:length(S2)-1)*df2; % Definir o eixo das frequências

figure();
hold on 
plot(freq1,abs(S1), Marker='o', Color = '#0000FF');
plot(freq2, abs(S2), Marker='+', Color='#77AC30')
xlim([0 20]);
hold off
legend('ST=1','ST=2'); title('Transformada');