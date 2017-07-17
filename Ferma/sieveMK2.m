function sieveMK2(n)

  load("prime_num.txt");
  el = length(prime_num);
  fprintf("alredy got %d prime number (this number should be > 0)\n", el)
  s = prime_num(el) +1 ;
  n = s+n;
  
  for num=[s:n] % FOR start ==========
  
    d = ferma_testGCD(num, 10);  % if d = 0, p is probabilistic prime number
    
    if d == 0 %  if start ============
      pnum = length(prime_num);
      if sum(gcd(num, prime_num)) != pnum
        d = 1;
        break
      end
      
      
      if d == 0
        prime_num = [prime_num num];
        save "prime_num.txt" prime_num;
      end
      
    end % if END =================
    
  end % FOR END ==================
  
  %save "prime_num.txt" prime_num;
  psum = length(prime_num);
  el = psum - el;
  fprintf("getting %d prime numbers in this trial \n", el);
  fprintf("total number of prime number is %d \n", psum)
  fprintf("biggest prime number is %d \n",prime_num(psum))
  
end