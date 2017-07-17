function ogOP_times(n,x,t);

  close all;
  
  n = 2^n ;
  
  prob = zeros(1,t+1);
  
  % initial states
  states = (1/sqrt(n)) * ones(1, n);  % indeces means states and its contained values are its sqrt(probability)
  
  prob(1) = states(x+1)^2;
  
  for i=1:t
    fprintf("%d times \n", i)
    figure(i);
    
    states = ogOP(states,n, x);
    prob(i+1) = states(x+1)^2;
    fprintf("Probability amplitude of |%d> = %f \n \n", x, states(x+1))
  end
  
  figure(t+1);
  bar([0:t], prob);
  xlabel("Times")
  ylabel("Probability amplitude")
  
  k = pi * sqrt(n) / 4;
  
  fprintf(" k = %f \n",k)
  
end
