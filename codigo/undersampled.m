clear;clc;close all;
sampling_rate = 8.5;
sampling_duration = 1; 
dt1 = 1/256;
dt2 = sampling_duration/sampling_rate;
% Vetor tempo e função seno 1
t1 = 0:dt1:2;
y1 = sin(2 * pi * 8 * t1);
% Vetor tempor e função seno 2
t2 = 0:dt2:2;
y2 = sin(2 * pi * 8 * t2);
% Plots
hold on 
plot(t1,y1)
plot(t2,y2, 'o', 'MarkerFaceColor', 'red', 'MarkerSize', 4)
legend('Sinal', 'Sinal subamostrado')
xlabel('Segundos')
hold off
axis([0 2 -2 2])