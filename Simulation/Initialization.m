%prior knowledge of the flexible satellite

delta=0.5*[ 1.3523 1.2784 2.1553;
      -1.1519 1.0176 -1.2724;
       2.2167 1.5891 -0.8324;
       1.23637 -1.6537 1.2251];
 
 omega_v = [ 1.5973 2.2761 1.9538 2.4893];
 zeta    = [0.056 0.086 0.08 0.025];
 
 C = diag([0.1789, 0.3915,  0.3126, 0.1245]);
 K=diag([2.5514, 5.1806, 3.8173, 6.1966]);



%rotational angles, rate and quaternions initial values

Phi0 = [pi/6 pi/3 -pi/4];
q0 = angle2quat(Phi0(1),Phi0(2),Phi0(3));

w0 = [pi/12 pi/24 0];

psi0=delta*transpose(w0);
eta0=[0 0 0 0];

init=[-0.263201  0.789603 -0.526402 0.5  0.6 -0.7 psi0'  0 0 0 0 ];

%the desired attitude (in quaternion) and attitude angular velocity
Phid =[pi/3 pi/6 pi/12];
qd= angle2quat(Phid(1),Phid(2),Phid(3));
wd= [0 0 0];


%demand torque into reaction wheels
Nd= [0 0 0];

%total external torque
Ne= [0.05 0 0];

%moment of inertia matrix considering principal axes coinciding with body
%frame and unsymmetrical body

J = [10 1 1; 1 8 0; 1 0 6];

%loading the trained agents and training options
load('agent_k1_trained.mat');
load('agent_alpha_Trained.mat');
load('agent3_Trained_options.mat');
load('agent3_Trained_criticNetwork.mat');
load('agent3_Trained_actorNetwork.mat');
load('agent3_Trained_critic.mat');
load('agent3_Trained_actor.mat');




