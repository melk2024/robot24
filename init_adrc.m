global Ba La gamma_a
beta0 = 0.4;
betap0 = 0;
theta10 = -0.018;
theta20 = 0.015;
mu = 0.1;
alpha = 2;
um = pi;
wc = 2*pi/alpha;
w0 = wc/mu;
theta6 = 0.5;

A = [0 1 0; theta10 theta20 1 ; 0 0 0];
B = [0; theta6; 0];
C = [1 0 0];

l1 = 3*w0 + theta20;
l2 = 3*w0^2 + theta10 + l1*theta20;
l3 = w0^3;
L = [l1; l2; l3];
Ta = 0.04;
Tc = 0.1;
I = eye(3);
gamma = A - L*C;
gamma_a = I + Ta*gamma;
Ba = Ta*B;
La = Ta*L;
kp = wc^2+ theta10;
kd = 2*wc + theta20;

