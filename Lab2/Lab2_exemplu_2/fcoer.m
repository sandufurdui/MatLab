function[x1,x2,x3]=fcoer(t)
% definim amplitudinea
a1=10; % m
a2=20; % m
% definim pulsatia
omega1=5; % rad/sec
omega2=5; % rad/sec
% definim faza initiala
alfa1=pi/1.3; % rad
alfa2=pi/1.7; % rad
x1=a1*sin(omega1*t+alfa1);
x2=a2*cos(omega2*t+alfa2);
x3=x1+x2;
end