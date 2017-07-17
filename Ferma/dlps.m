function dlps(g,x,p)
  d = 0;
  r_range = [1:p-1];
  x = rem(x,p);
  
  for r = r_range
    g_r = power_remFunc(g, r, p);
    if g_r < 0
      break
    end
    
    if g_r == x
      fprintf("\n %d^%d = %d mod %d \n", g,r,x, p)
      fprintf("r = %d \n", r)
      d = 1;
      break
    else
      fprintf(".")
    end
    
  end
  
  if d == 0
    fprintf("\n Not Found \n")
  end
  
end
