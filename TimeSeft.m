a=5;
f1=10;
t1=0:0.01:1;
x=a*sin(2*pi*f1*t1);

X=MyDft(x);
subplot(2,2,1);
stem(X);
X1=MyDft(x);
subplot(2,2,2);
stem(X1);
