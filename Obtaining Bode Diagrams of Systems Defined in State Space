clear all; close all; clc;

'----- Obtaining Bode Diagrams of Systems Defined in State Space -----'

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

A = [0 1;-25 -4];
B = [0;25];
C = [1 0];
D = [0];
bode(A,B,C,D)
title('Bode Diagram_A_B_C_D')
