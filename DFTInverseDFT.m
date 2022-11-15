clc;
clear all;
fs=8000;
ts=1/fs;
N=8;
n=0:N-1;
x=sin(2*pi*1000*n*ts)+.5*sin(2*pi*2000*n*ts+3*pi/4);
X=zeros(1,N);
for m=1:N
    for n=1:N
        X(m)=X(m)+x(n)*exp(-2j*pi*(n-1)*(m-1)/N);
    end
end
Xr=real(X)
Xi=imag(X)
subplot(2,2,1)
stem(Xr)
ylabel('Amplitude');
title('DFT real part');
subplot(2,2,2)
stem(Xi)
title('DFT imaginary');

ln=length(X);
x=zeros(1,ln)
for i=1:ln
    for n=1:ln
        x(i)= x(i)+((1/ln)*X(n)*exp(2*pi*j*(i-1)*(n-1)/ln))
    end
end
xr=real(x)
xi=imag(x)
subplot(2,2,3)
stem(xr)
title('Inverse DFT real part');
subplot(2,2,4)
stem(xi)
title('Inverse DFT imaginary part');
