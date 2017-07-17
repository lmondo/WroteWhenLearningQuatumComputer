function states = ogOP(states,n, x)
  
  subplot(1,3,1);
  
  bar([0:n-1],states);

 
  
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
  
  subplot(1,3,2);
  
  bar([0:n-1],states);
  hold on;
  
  d = [-1:n+1];
  plot(d, m*ones(1,length(d)), "r", "linewidth", 2.0); % mean line
  
  
  subplot(1,3,3);
    
  states = 2*m - states;  
  
  bar([0:n-1],states);
  hold on
  
  plot(d, m*ones(1,length(d)), "r", "linewidth", 2.0); % mean line
  
  fprintf("meann = %d \n", m)
  states
  fprintf("total probability = %f \n", sumsq(states));
  

  
  % ===================================

  
end