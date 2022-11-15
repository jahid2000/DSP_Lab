n = 0:7;
x = [1 1 2 2 3 3 4 4];

X = MyDft(x);
%xx = DftExam(X);
subplot(421);
stem(n,x);
title('original dft');
%axis([0 7 0 4]);


m = -2;
XX =  MyDftFft(X,m);
subplot(422);
stem(n,IDFT(XX));


