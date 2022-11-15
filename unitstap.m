clc;
clear all;
a1=-4;
f1=8;
t1=0:0.001:1;
x=a1*sin(2*pi*f1*t1);
n1=length(x);

a2=-8;
f2=16;
t2=0:0.001:1;
y=a1*sin(2*pi*f2*t2);
n2=length(y);
h=flip(y);
for i=1:n1+n2-1
  xx(i)=0;
endfor

for i=1:n1
  for j=1:n2
    xx(i+j-1)=xx(i+j-1)+x(i)*h(j);
  endfor
endfor

lagg=((n1-1)+(n2-1))/2;
lag=-lagg:lagg;
subplot(2,2,1);
plot(lag,xx);

