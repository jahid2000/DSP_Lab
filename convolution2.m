clc,clear all,close all;
x=input('enter the input sequence of a signal x(n)');
h=input('enter the input sequence of a signal h(n)');

n1=length(x);
n2=length(h);
N=n1+n2-1;

x=[x,zeros(1,N-n1)];
h=[h,zeros(1,N-n2)];
y=zeros(1,N);

for n=1:N
  for k=1:n
    y(n)=y(n)+x(k)*h(n-k+1)

  endfor
endfor

disp(y);

ny=0:N-1
subplot(3,1,1);stem(ny,x);xlabel('n....>');ylabel('x(n)....>');title('First sequence');

subplot(3,1,2);stem(ny,h);xlabel('n...>');ylabel('h(n)...>');title('second sequence');

subplot(3,1,3);stem(ny,y);xlabel('n....>');ylabel('y(n)....>');title('convolution');

