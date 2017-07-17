function [J, theta] = gradientDescent(theta, alpha, X, y)

  m = length(y);
  X = [ones(m,1) X];
  
  J = (1/m) * sum( X' * (X*theta - y) );

  grad = (1/m) *X' * (X * theta - y);  
  theta = theta - alpha * grad;


end
