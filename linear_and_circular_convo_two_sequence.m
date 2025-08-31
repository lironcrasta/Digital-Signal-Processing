clc;
close all;
clear all;

x1=input('Enter the first sequence=')
x2=input('Enter the second sequence=')
y=conv(x1,x2);
disp('linear convolution of x1&x2 is y=');
disp(y);

subplot(2,2,1);
stem(x1);
xlabel('time index n');
ylabel('amplitude');
title('plot of x1');

subplot(2,2,2);
stem(x2);
xlabel('time index n');
ylabel('amplitude');
title('plot of x2');

subplot(2,2,[3,4]);
stem(y);
xlabel('time index n');
ylabel('amplitude');
title('convolution output');