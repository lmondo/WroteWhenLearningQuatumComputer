function oracleAndGroverOP(n, x)

  n = 2^n ;
  states = (1/sqrt(n)) * ones(1, n);  % indeces means states and its contained values are its sqrt(probability)
  
  close all;
  
  subplot(1,2,1);
  
  bar(states);
  hold on;
  
  fprintf(" initial states. \n")
  fprintf("pause. \n")
  pause;
  
  % ==== oracle : mapping x  ==========
  for k=[0:n-1]
    if k==x
      states(k+1) = - states(k+1);
    break
    end
  end
  
  % ===================================
  
  
  
  % ==== Glover Operator : mapping x  ==========
  m = mean(states); % the average of states array
  
  rng = length(states);
  
  plot([0:n+1], m*ones(1,n+2), "r"); % mean line
  
  fprintf(" mean line \n")
  fprintf("pause\n")
  pause;
  
  subplot(1,2,2);
    
  states = 2*m - states;  
  
  bar(states);
  hold on
  plot([0:n+1], m*ones(1,n+2), "r"); % mean line
  
  % ===================================

  
end