function[x1,x2,x3]=fcoer_dalfa(t,dalfa)
% definim amplitudinea
a1=10; % m
a2=20; % m
% definim pulsatia
omega1=14; % rad/sec
omega2=14; % rad/sec
% definim faza initiala
alfa1=pi/1.3; % rad
alfa2=alfa1+dalfa; % rad 
x1=a1*cos(omega1*t+alfa1);
x2=a2*cos(omega2*t+alfa2);
x3=x1+x2;
end