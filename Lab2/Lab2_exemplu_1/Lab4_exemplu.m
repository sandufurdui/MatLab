% Lucrare de laborator la Mecanica realizat? ?n MatLab
%           „Compunerea oscila?iilor armonice”
% Efectuat: Student gr. _______, Facultatea______, var._____
%
% Exercitiul 2. Compunerea oscilatiilor armonice in aceeasi directie
% Punctul a): Compunerea oscilatiilor armonice necoerente
clear; close all; clc; 
global t
% cream file-functia f_necoer
t = 0:0.01:10;
f_necoer(t)
% Punctul b): Compunerea oscilatiilor armonice coerente
% cream file-functia f_coer
t = 0:0.01:50;
f_coer(t)
% Punctul c): Compunerea oscilatiilor armonice coerente
% cream file-functia f_beat
t = 0:0.01:300;
f_beat(t)
% Punctul d): Compunerea oscilatiilor armonice coerente cu
% diferite diferente de faza
% cream file-functia f_alpha
t=0:0.01:50;
n=0;
for a=[0, pi/6,pi/4,pi/3,pi/2,2*pi/3,3*pi/4,5*pi/6,pi]
  n=n+1;  
f_alpha(n,a)
end
%***********************************************************
% Exercitiul 3.Compunerea oscilatiilor armonice in directii reciproc
% perpendiculare
% Punctul a): Oscilatii armonice coerente
% cream file-functia fa_Lissajous
t=0:0.01:50;
n=0;
for a=[0, pi/6,pi/4,pi/3,pi/2,2*pi/3,3*pi/4,5*pi/6,pi]
  n=n+1;  
fa_Lissajous(n,a)
end
% Punctul b): Oscilatii armonice necoerente
% cream file-functia fb_Lissajous
t=0:0.01:50;
n=0;
for a=[0, pi/6,pi/4,pi/3,pi/2,2*pi/3,3*pi/4,5*pi/6,pi]
  n=n+1;  
fb_Lissajous(n,a)
end
% *******************************************************
% Concluzii:
