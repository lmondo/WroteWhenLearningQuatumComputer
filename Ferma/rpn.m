function a = rpn(n)

  a = randi([2:n-1]);
  
  while gcd(a, n) != 1
    a = randi([2:n-1]);
  end
  
end

    