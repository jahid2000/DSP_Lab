
f=100;
fs=200;
n=0:1/fs:1;
x=sin(2*pi*f*n);
subplot(2,2,1);
plot(n,x);
title('sampling signal');

%quantization

bit=3;
aMax=max(x);
aMin=min(x);
step=(aMax-aMin)/(2.^bit);
y=round(x/step)*step;

subplot(2,2,2);
plot(n,y);
title('quantization signal');

