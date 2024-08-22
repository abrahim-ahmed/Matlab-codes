clear all; close all; clc;

'----- Plotting Bode Diagrams -----'

%Plot a Bode diagram for this transfer function.
%   [NUM,DEN] = bode(A,B,C,D,iu)  calculates the transfer function:
%
%               NUM(s)           25    
%       G(s) = --------  = ---------------
%               DEN(s)      s^2 + 4s + 25
%   of the system:

num = [25];
den = [1 4 25];
bode(num,den)
title('Bode Diagram of G(s) = 25/(s^2 + 4s + 25)')  %<---[NUM(s)/DEN(s)]
