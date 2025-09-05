clc;
close all;
clear all;
x=input('Enter the first sequence=');
y=input('Enter the second sequence=');

n1=length(y)-1;
n2=length(x)-1;
[Rxy,lag]=xcorr(x,y);
disp('Cross correlation output is=');
disp(Rxy);
N=max(n1,n2);
stem(lag,Rxy);
xlabel('Lag index');
ylabel('amplitude');