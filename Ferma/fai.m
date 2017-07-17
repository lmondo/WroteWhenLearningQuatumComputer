function f = fai(n)

  rng = [1:n-1];
  dec = gcd(rng, n);
  dec = (dec == 1);
  
  f = sum(dec);
  
end
