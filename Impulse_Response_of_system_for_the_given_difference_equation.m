clc;
close all;
N=input('Lenght of impulse response required=');
b=[1]; %x[n] coefficient
a=[1,-1,0.9]; %y[n] coefficients
h=impz(b,a,N);%impulse response

%Plot the impulse response sequence
n=0:N-1; %time vector for plotting
stem(n,h);
title('impulse response');
xlabel('n');
ylabel('h(n)');