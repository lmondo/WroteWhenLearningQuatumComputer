close all; clear; clc;

making_data;
making_FourieXydata;

function [theta] = normalEQ(X,y, m)
  X = [ ones(m,1) X ];
  theta = pinv(X' * X) * X' * y;
end

X = load("Xdata.txt");
y = load("ydata.txt");

x_direction = X(:,1);

plot(x_direction, y);
hold on;

m = length(y);

initial_theta = zeros(size(X,2)+1, 1);


% ==========================================================================
[J, grad] = costFunction(initial_theta, X, y);

options = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
% ==========================================================================
% theta = normalEQ(X, y, m);
% ==========================================================================

pre_x = [ones(m,1) X ];
hx = pre_x * theta;

plot(x_direction, hx, "r");
