function [g] =  power_remFunc(g, r, p) % return g^r mod p

  if gcd(g, p) == 1
    g = rem(g,p);
    fac = g;
    
    for n=[1:r-1]
      g = g*fac;
      if g >= p
        g = rem(g, p);
      end
    end
    

  else
    fprintf("Input: g = %d gnd p = %d \n", g, p)
    fprintf("NOT relatively prime prime \n")
  end
  
end