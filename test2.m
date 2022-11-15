

a1=5;
f1=50;
t1=0:0.01:1;
x=a1*sin(2*pi*f1*t1);
len=length(x)
a2=10;
f2=100;
t2=0:0.01:1;
y=a2*sin(2*pi*f2*t2);
len2=length(y);
h=flip(y);



for k=1:len+len2-1
  cros(k)=0;
endfor
for k=1:len
  for m=1:len2
    cros(k+m-1)=cros(k+m-1)+x(k)*h(m);
  endfor
endfor

lagval1=((len-1)+(len2-1))/2;
lag=-lagval1:lagval1
subplot(2,2,1);
plot(lag,cros);
title('cross cor');
