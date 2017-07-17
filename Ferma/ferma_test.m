function ferma_test(p, t)

  d = 0;
  
  for n =1:t
    x = rpn(p);

    
    dec = fremFunc(x, p);
    
    if dec < 0
      fprintf("Initialize error. gcd is not 1\n")
      d = 2;
      break
    elseif dec != 1
      fprintf("%d^(%d-1) = %d \n", x,p, dec)
      fprintf("%d is Composite number\n", p)
      d = 3;
      break
    end
    
  end
  
  if d == 0
    fprintf("%d is probabilistic prime number \n", p)
  end
  
  
end