function [k] =  fremFunc(g, p) % return g^(p-1)

  if gcd(g, p) == 1
    t = rem(g,p);
    k = t;
    
    for n=[1:p-2]
      k = k*t;
      if k >= p
        k = rem(k, p);
      end
    end
    

  else
    k = -1;
    fprintf("Input: g = %d gnd p = %d \n", g, p)
    fprintf("NOT relatively prime prime \n")
  end
  
end