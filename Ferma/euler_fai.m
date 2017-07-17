function euler_fai(a, n)

  if gcd(a,n) == 1
  
    f = fai(n);
    a_f = power_remFunc(a, f, n);
    
    fprintf("fai(%d) = %d \n", n, f)
    fprintf("%d^%d = %d \n", a, f, a_f)
    
    else
    fprintf("NOT relatively prime \n")
  end
  
end