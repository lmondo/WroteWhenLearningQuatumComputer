clear; clc;

data = load("data.txt");
x = data(:,1);
y = data(:,2);

X = x;

for n=0:0.5:20
  s = sin(n.*x);
  c = cos(n.*x);
  X = [X s c];
end

% X = [ [0:0.001:10]' sin(x) cos(x) sin(2x) cos(2x) .... sin(10x) cos(10x) ]

save "Xdata.txt" X -ascii
save "ydata.txt" y -ascii