
%======= Cleaning ==========
close all; clear; clc;
%===========================

% figure 1 ==========

%======= circle ============

fx = exp(pi * i * [0:0.05:7]);

plot(fx);
hold on

%===========================




%======== Parameters =======

q = 10;

rc = 30;

%===========================


bmax = 10;

b = [1:bmax];

y = exp( (2*pi*i / q) * b * rc );

ysum = abs( sum(y) / bmax );
ysum = ysum^2;

fprintf("sum of figure1 = %d \n", ysum );

plot(y, "@r", "markersize", 20)
xlabel("Real");
ylabel("Image");
title("q = 10, rc = 30, sum =1");











% figure 2 =============


figure(2);

%======= circle ============

fx = exp(pi * i * [0:0.05:7]);

plot(fx);
hold on

%===========================

%======== Parameters =======

q = 10;

rc = 29;

%===========================


bmax = 10;

b = [1:bmax];

y = exp( (2*pi*i / q) * b * rc );

ysum = abs( sum(y) / bmax );
ysum = ysum^2;

fprintf("sum of figure2 = %d \n", ysum );

plot(y, "@r", "markersize", 20)
xlabel("Real");
ylabel("Image");
title("q = 10, rc = 29, sum =4.45407e-030");
