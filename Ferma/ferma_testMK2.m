function ferma_testMK2(p, t)

  d = 0;
  
  for n =1:t
    x = randi([2,p-1]);
    
    if gcd(x,p) != 1
      fprintf("gcd(%d,%d) = %d\n", x,p, gcd(x,p));
      fprintf("%d is Composite number\n", p);
      d = 1;
      break
    end

    
    dec = fremFunc(x, p); %x^(p-1)
    
    if dec < 0
      fprintf("Initialize error. gcd is not 1\n")
      d = 2;
      break
    elseif dec != 1
      fprintf("%d^(%d-1) = %d  mod %d \n", x,p,dec, p)
      fprintf("%d is Composite number\n", p)
      d = 3;
      break
    end
    
  end
  
  if d == 0
    fprintf("%d is probabilistic prime number \n", p)
  end
  
  
end