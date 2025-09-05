clc;
clear all;
close all;
x=input('enter the input sequence');
n=0:length(x)-1;
N=length(n);
Xk=fft(x,N);
k=n;
l=input('enter the number of units of circulal time shift');
  for n1=0:N-1
      i=mod((n1-1),N);
      xs(n1+1)=x(i+1);
  end
Xs=fft(xs,N)
disp('The DFT of circular time shift of x(n), i.e., x(n-1) is Xs=');
disp(Xs)
   for k1=0:N-1
       Xke(k1+1)=exp(-j*2*pi*l*k1/n)*Xk(k1+1);
   end
   disp('The DFT of original sequence multiplied to exponential function with argument 1,Xke=');
   disp(Xke);
      if(uint16(abs(xs))==uint16(abs(Xke)))
          disp('The time shifting property is verified');
      else
          disp('Data processing is wrong');
      end