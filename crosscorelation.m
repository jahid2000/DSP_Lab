clc,clear all,close all;
x=input('enter the input sequence of signal x(n)');
n1=input('enter time sample rate:');
h = input('enter the input sequence of a signal y(n)');
n2 = input('enter the time sample range:')

L1=length(x);
L2=lenght(h);
n2=-fliplr(n2);
N=L1+L2-1;
y=fliplr(h);

x=[x,zeros(1,N-L1)];
h=[h,zeros(1,N-L2)];
y=zeros(1,N);
 for n=1:N
   for k=1:n
     y(n)=y(n)+x(k)*h(n-k+1)
   endfor
 endfor

 disp(y);

 nL=min(n1)+min(n2);
 nH=max(n1)+max(n2);
 t=nL:1:nH;
 stem(t,y);
 grid on;


