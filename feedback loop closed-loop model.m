clear all; close all; clc;

'----- consider the system shown in T=3,and r(t) is the unit-step signal -----'

% M = feedback(M1,M2) computes a closed-loop model M for the feedback loop: 
%                  E(s)    1
%         R(s)--->O---->[ --- ]----+---> C(s)   C(s)
%                 |        Ts      |           ----- = 1/ts+1
%                 +-----<----<-----+            R(s)
numE= [1];
denE= [3 1];
Ctts= tf(numE,denE);
sysE = feedback(Ctts,[1])
