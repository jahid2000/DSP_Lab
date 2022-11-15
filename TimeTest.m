a=-4;
fs=5;
ts=0:0.01:1;
x=a*sin(2*pi*fs*ts);
xs = circshift(x,4);
a1=-8;
f1=5;
t1=0:0.01:1;
y=a1*sin(2*pi*f1*t1);

X=MyDft(x);
X1=MyDft(y);
xx=X+X1;
subplot(2,2,1);
stem(xx);


xy=x+y;
X2=MyDft(xy);
subplot(2,2,2);
stem(abs(MyDft(x)));
title('normal');
subplot(2,2,3);
stem(angle(MyDft(x)));


 X3=MyDft(x);
X3=circshift(x,2);
subplot(2,2,4);

stem(abs(MyDft(xs)));
title('sifted');
subplot(2,2,5);
stem(angle(MyDft(xs)));
