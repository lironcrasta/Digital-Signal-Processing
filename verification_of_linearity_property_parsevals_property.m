clc;
clear all;
close all;
x1=input('enter sequence 1 :');
x2=input('enter the sequence 2 of the same length as of x1 :');
a1=input('enter a1=');
a2= input('enter a2=');
x1f=fft(x1);
x2f=fft(x2);
x3f=a1*x1f+a2*x2f;
x3=a1*x1+a2*x2;
x4f=fft(x3)
if (uint16(abs(x3f))==uint16(abs(x4f)))
    disp('the linearity property is verified');
else
    disp('data procssing is wrong');
end

%Parseval's Theorm
close all;
clear all;
clc;
x=input('enter the input sequence');
n=0:length(x)-1;
N=length(n);
Xk=fft(x,N)
E1=sum(x.^2)
E2=sum(abs(Xk).^2)/N
if(uint16(abs(E1))==uint16(abs(E2)))
    disp('The Parsevals theorm is verified');
else
    disp('Data processing is wrong');
end

 

