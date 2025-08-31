clc;
close all;
clear all;
x=[1 2 3 4]
h=[2 1 2 1]
N=max(length(x),length(h));

    for n=0:N-1
        y(n+1)=0;

        for k=0:N-1
i=n-k;

if i<0
    i=i+N;
end
        y(n+1)=y(n+1)+h(k+1)*x(i+1);
    end
end
    disp('circular convolution of x1&x2 is y=');
    disp(y);

    n1=0:N-1;
    stem(n1,y);
    xlabel('time');
    ylabel('amplitude');
    title('circular convolution output y(n)');
