clc;
clear all;
close all;
x= input('enter the input sequence');
n=0:length(x)-1;
N=length(n);
Xk=fft(x,N);
k=n;
m= input('enter the number of units of circular freequency shift=');
for k1=0:N-1
    p= mod((k1-m),N);
    Xks(k1+1)= Xk(p+1);
end
for n=0:N-1
    xexpn(n+1)= exp(j*2*pi*m*n/N)*x(n+1);
end
xexpn=fft(xexpn,N);
disp('the frequency shifted version of DFT of original sequence is Xks');
disp(Xks);
disp('DFT of original sequence multiplied to exponential function with argument m is Xexpn=');
disp(xexpn);
if (uint16(abs(Xks))==uint16(abs(xexpn)))
    disp('frequency shifting property is verified');
else
    disp('data processing is wrong');
end


