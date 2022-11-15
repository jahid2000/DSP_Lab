function X = DftExam(x)
  len = length(x);
  X = zeros(1,len);

  for n = 1:len
    for k = 1:len
      X(n) = X(n) + ((1/len)*x(k)*exp(2*pi*j*(k-1)*(n-1)/len));
    end
  end

 end
