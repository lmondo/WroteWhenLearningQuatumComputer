function frem(a, p)

  if gcd(a, p) == 1
    k = prFunc(a, p-1, p); % a^(p-1) mod p
    
    if k == 1
      fprintf(" a^(p-1) = %d^(%d) = %d  (mod %d) \n",a, p-1, k, p);
    else
      fprintf("%d is no prime number\n", p);
    end
  
  else
    fprintf("NOT relatively prime \n")
  end
  
end