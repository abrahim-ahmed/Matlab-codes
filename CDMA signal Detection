clear all; close all; clc;
tic,
K=8; 
N=31;
M=10000;
bsize=1000; 
nblocks=50; 
nb=M/bsize;
snr_db=[1:2:15];
S2=randsrc(N,K); 
S=(1/sqrt(N))*S2;
R1 =S'*S;s1 =S(:,1);  %<---User-1
LS=inv(R1)*S';
snr=10.^(0.1*snr_db);
ber1=zeros(1,length(snr));
ber2=zeros(1,length(snr));
B=[];
T=[];
R=[];
A1=1;
A2=A1;
A3=A1;
A4=A1;
A5=A1;
A6=A1;
A= diag([A1,A2,A3,A4,A5,A6]);   %<--A=DIAG([A1,A2,A3,A4,A5,A6]);
A=eye(K)
H=S*A
