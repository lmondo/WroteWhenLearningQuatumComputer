
%======= Cleaning ==========
close all; clear; clc;
%===========================


function sum_y = probFunc(a, r, k, q, c)

  b = [(-k/r):q-k-1];
  q = length(b);
  
  prob_y = exp( (2*pi*i / q) * c * r * b );
  sum_y = (abs(sum(prob_y)));
  sum_y = sum_y^2;
  sum_y = sum_y / (q^2);

end



%======= Parameters ========

q = 2^8;

vec_c = [0:q-1];

vec_r = [1:q];

k = 0;

%===========================

a = [0:q-1];

z = zeros( 1, length(vec_c) );

r = 2;

for c = vec_c
  z(c+1) = probFunc(a, r, k, q, c);
end

vec_c = vec_c /q;

plot(vec_c, z/r);

xlabel("c/q"); ylabel("probabilty"); title("q = 2^8, r = 2");
