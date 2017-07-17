function faiGraph(n)
  
  
  f = [];
  rng = [1:n];
  
  for num = rng
    f = [f fai(num)];
  end
  
  plot(rng, f);
  
  xlabel("n");
  ylabel("fai(n)");
  
  hold on;
  
  %================
  g=0.5;
  
  for p=rng
    eFunc(p) = exp(-0.5)*(p +1)/(log(log(p + 1)));
  end
  
  plot(rng, eFunc, "r");
  
  
end

