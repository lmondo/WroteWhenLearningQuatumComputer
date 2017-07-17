clear; clc;

x = [0:0.001:10]';

y = sin(2.*x);
y = y + cos(7.*y);
y = y + cos(0.5 .*x);
y = y;

data = [x y];

% X = [ [0:0.001:10]' sin(x) cos(x) sin(2x) cos(2x) .... sin(10x) cos(10x) ]

save "data.txt" data -ascii;

plot(x,y);


