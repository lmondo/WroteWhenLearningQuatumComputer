
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

vec_c = [1:2^5];

vec_r = [1:q];

k = 10;

%===========================

a = [0:q-1];

z = zeros( length(vec_r), length(vec_c) );

for r = vec_r
  for c = vec_c
    z(r, c) = probFunc(a, r, k, q, c);
  end
end


mesh(z); 

%contour3(z), colorbar;


xlabel("c"); ylabel("r"); title("q = 2^8");


