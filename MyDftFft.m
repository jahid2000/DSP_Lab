function X_Shift=MyDftFft(X,m)
  N=length(X);
  X_Shift=zeros(1,N);
  for k=1:N
    X_Shift(k)=X(k)*exp(-2*pi*j*m*(k-1)/N);

  endfor
end

