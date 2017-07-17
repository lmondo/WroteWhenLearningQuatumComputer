function ferma_number(n)

  for num = [0:n]
    pow = 2^num;
    fnum = 2^pow + 1;
    fprintf("F_%d = %d \n", num, fnum)
  end
  
end
