clear;
clearvars;
global Ta Tc sigma2e pls P TF wr Yr alpha
Ta = 0.05;
Tc = 0.001;
sigma2e = 0.01;
TF = 1.5*Ta;
pls = [1 1]';
P = eye(2)*1000;
wr = 0.25;
Yr = 0.15;
alpha = 3;
w = [5 1 1]';