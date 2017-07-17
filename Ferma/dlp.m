function dlp(p)

  gvec = [1:p-1];
  rvec = gvec;
  
  for g = gvec
    for r = rvec
      x = prFunc(g, r, p); % return g^r mod p
      fprintf("%d^%d (mod %d) = %d \n", g,r,p,x)
    end
  end

end