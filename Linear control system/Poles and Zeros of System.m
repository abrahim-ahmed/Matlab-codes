
' Zeros of System '
numg4=[6 0 1];
deng4=[1 3 3 1];
sysg4=tf(numg4,deng4);   %<--- ZERO
Z=zero(sysg4);
Z
'   Poles'
p=pole(sysg4)
