clc;
close all;
N=input('Length of impulse response required=');
b=[1];
a=[1,-1,0.9];
h=impz(b,a,N);

n=0:N-1;
stem(n,h);
title('impulse respone');
xlabel('n');
ylabel('h(n)');