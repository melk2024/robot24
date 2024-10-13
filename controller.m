function u = controller(in)
K = in(1:2);
l = in(3);
Theta = in(4:6);
r = in(7);
x = in(8:9);
phi_x = in(10:12);

u = K'*x + l*r - Theta'*phi_x