function carmichael_test(p)

  gvec = [2:p-1];
  r = p-1;
  d = 0;
  
  for g = gvec

    if gcd(g, p) == 1
        x = prFunc(g, r, p); % return g^r mod p
        %fprintf("%d^%d (mod %d) = %d \n", g,r,p,x)
        
        if x != 1
          d = 1;
          fprintf("%d is not carmichael number \n", p)
          break
        end
    end
    
  end
  
  if d == 0
    fprintf("%d is carmichael number \n", p)
  
end