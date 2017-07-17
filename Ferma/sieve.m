function sieve(n)

  load("prime_num.txt");
  s = prime_num(length(prime_num)) +1 ;
  n = s+n
  
  for num=[s:n] % outside FOR ==========
  
    d = ferma_testGCD(num, 10);  % if d = 0, p is probabilistic prime number
    
    if d == 0 
      for pnum=prime_num % inside FOR ============
        if gcd(num, pnum) != 1
          d = 1;
          break
        end
      end
      
      if d == 0
        prime_num = [prime_num num];
        save "prime_num.txt" prime_num;
      end
      
    end % inside FOR END =================
    
  end % outside FOE END ==================
  
  %save "prime_num.txt" prime_num;
  prime_num
end