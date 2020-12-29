function [x,y,z]=xyz(t)
x=t.*(t-2.*pi);
y=sin(t);
z=2.*t;