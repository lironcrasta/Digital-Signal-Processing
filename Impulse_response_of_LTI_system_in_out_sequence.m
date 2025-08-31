clc;
close all;
clear all;
y=input('The output sequence y(n) of the system= ');
x=input('The input sequence of the system=');
[h,r]=deconv(y,x);
disp('The impulse response of the system is=');
disp(h);
disp('The remainder is=');
disp(r);

%Graphical display part
N=length(h);
n=0:1:N-1;
stem(n,h);
xlabel('Time index n');
ylabel('Amplitude');
title('Impulse response of a system')

%Verification
yv=conv(x,h)+r;
disp('The verified output sequence is');
disp(yv)