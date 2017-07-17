function attend_dlp(p)

  attendance = zeros(1, p-1);
  
  attendance(1) = NaN;

  gvec = [1:p-1];
  rvec = gvec;
  
  for g = gvec
    for r = rvec
      x =  prFunc(g, r, p);
      attendance(x+1) = x;
      %fprintf("%d^%d (mod %d) = %d \n", g,r,p,x)
    end
  end
  
  attendance

end