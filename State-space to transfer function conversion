clear all; close all; clc;

'----- obtain the transfer function of the system defined by the state-space -----'

%SS2TF  State-space to transfer function conversion.

%   [NUM,DEN] = SS2TF(A,B,C,D,iu)  calculates the transfer function:
%
%               NUM(s)          -1
%       G(s) = -------- = C(sI-A) B + D
%               DEN(s)
%   of the system:
%       .
%       x = Ax + Bu
%       y = Cx + Du 

A1 = [-4 -1;3 -1];
B1 = [1;1];
C1 = [1 0];
D1 = [0];
[num1,den1] = ss2tf(A1,B1,C1,D1,1);
sys1 = tf(num1,den1)
