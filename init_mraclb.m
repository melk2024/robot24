global Tc sigma2e am bm cm dm wr gx_i gr_i gphi_i R P thet1o thet2o thet3o ...
    thet4o thet5o thet6o wn zet Ko Thetao Q k1o k2o  lo bbo ao

Tc = 0.1;
sigma2e = 0;
R = 1.5;
wr = 0.15;

gx_i = 2000*eye(2); % i - inverse
gr_i = 2000; 
gphi_i = 2000*eye(3);

Q = diag([1;100]);
wn = 2;
zet = 1;
bbo = [0; 1];
ao = [0 1; thet1o thet2o];
am = [0 1; -wn^2 -2*zet*wn];
bm = [0; wn^2];
cm = [1 0; 0 1];
dm = [0; 0];
P = lyap(am,Q);

thet1o = -0.018; thet2o = 0.015; thet3o = -0.062; 
thet4o = 0.009; thet5o = 0.021; thet6o = 0.75;

Thetao = [thet3o/thet6o; thet4o/thet6o; thet5o/thet6o];
k1o = -(thet1o + wn^2)/thet6o;
k2o = -(thet2o + 2*zet*wn)/thet6o;

Ko = [k1o; k2o];
lo = wn^2/thet6o;