clc;
clear;

%N=4;
%N=8;
x=[1,2,3,6];

%N=80;
N=160;
%n1=0:7;
n1=0:79;
x=sin(2*pi*n1*250/8000);

xk=fft(x,N);

n=0:1:N-1;
subplot(3,1,1);
n1=0:1:length(x)-1;
stem(n1,x);
xlabel(' n');
ylabel('x[n]');
title('original signal');

subplot(3,1,2);
stem(n,abs(xk));
xlabel(' k');
ylabel('lxkl');

title('Magnitude spectrum');

subplot(3,1,3);
stem(n,angle(xk));
xlabel(' k');
ylabel('angle(xk)');

title('phase spectrum');