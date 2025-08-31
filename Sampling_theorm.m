clear;
close all;
clc;
tfinal=0.05;
t=0:0.00005:tfinal
fd=input('Enter analog frequency:'); %200
xt=cos(2*pi*fd*t);

%Undersampling 
fs1=1.3*fd;
n1=0:1/fs1:tfinal;
xn1=cos(2*pi*fd*n1);

%Nyquist
fs2=2*fd;
n2=0:1/fs2:tfinal;
xn2=cos(2*pi*fd*n2);

%Oversampling
fs3=5*fd;
n3=0:1/fs3:tfinal;
xn3=cos(2*pi*fd*n3);

%Plot1:Undersampling
subplot(3,1,1);
plot(t,xt,'b','LineWidth',3); hold on; %keep the current plot for next to be plotted on it
plot(n1,xn1,'r*-'); hold off;
title('Undersampling');

%Plot 2:Nyquist 
subplot(3,1,2);
plot(t,xt,'b','LineWidth',3); hold on; %'LineWidth',3 its the width of the blue line in plot
plot(n2,xn2,'r*-'); hold off; %red*marker-connect the *
title('Nyquist Sampling');

%Plot 3:Oversampling
subplot(3,1,3);
plot(t,xt,'b','LineWidth',3); hold on;
plot(n3,xn3,'r*-'); hold off;
title('Oversampling');