function [ x,y,z ] = xyz( t ) 
x=t.*(1-cos(2.*t)); 
y=t.*sin(2.*t); 
z=1.3.*t;
end