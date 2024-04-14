clc; clear; close all;
% Efeito de mudar a taxa de amostragem
F=8;
SR1=256;
SR2=128;
T2=0.5;
dt1=1/SR1;
dt2=1/SR2;
t1 = 0:dt1:2;
t2 = 0:dt2:2;
s1 = sin(2*pi*F*t1).*exp(-t1/T2); s2 = sin(2*pi*F*t2).*exp(-t2/T2);

figure();
hold on 
plot(t1,s1, 'o', Color = '#0000FF')
plot(t2,s2, '+', Color='#77AC30')
hold off
axis([0 2 -2 2]);
legend('SR=256','SR=128'); title('Sinal')

% Definir o eixo das frequências
S1 = fft(s1);
S2 = fft(s2);
fmax1=length(S1);
fmax2=length(S2);
df1=(1/dt1)/length(S1);
df2=(1/dt2)/length(S2);
freq1=(0:length(S1)-1)*df1;
freq2=(0:length(S2)-1)*df2;

figure();
hold on
yyaxis left
plot(freq1,abs(S1), Marker='o', Color = '#0000FF'); 
yyaxis right
plot(freq2, abs(S2), Marker='+', Color='#77AC30'); 
ax=gca;
ax.YAxis(1).Color='#0000FF'
ax.YAxis(2).Color='#77AC30';
hold off
xlim([0 (1/dt2)/2]);
legend('SR=256','SR=128'); title('Transformada');