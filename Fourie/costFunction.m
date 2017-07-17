function [J, grad] = costFunction(theta, X, y)

  m = length(y);
  X = [ones(m,1) X];
  J = (1/m) * sum( X' * (X*theta - y).^2 );

  grad = (1/m) *X' * (X * theta - y);


end
