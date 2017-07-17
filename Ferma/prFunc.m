function [g] =  prFunc(g, r, p) % return g^r mod p

  g = rem(g,p);
  fac = g;
    
  for n=[1:r-1]
    g = g*fac;
    if g >= p
      g = rem(g, p);
    end
  end
 
  
end