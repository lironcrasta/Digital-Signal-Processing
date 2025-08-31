clc;
close all;
N=input('Length of impulse response required=');
b=[2,3,1];
a=[1,2,0.5];
h=impz(b,a,N);

n=0:N-1;
stem(n,h);
title('impulse respone');
xlabel('n');
ylabel('h(n)');