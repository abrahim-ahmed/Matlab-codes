%by ENG.Ibrahim ahmed aljrdan
clear all; close all; clc;
%CDMA signal spreading in matlab
for i=1:2000
%----------------------------- USER#1 ----------------------------------
'--------------------- USER#1 ---------------------'
D1=[0 0];  %<---DATE  2Bits to send 
C1=[0 1 0 1];  %<---Spreading CODE (Used code)

d11=D1(1);                       %<----------\
dd11=[d11 d11 d11 d11]                      %|
d12=D1(2);                                  %|
dd12=[d12 d12 d12 d12];                     %|
Code1=[C1]                                  %  Spreading 
Data1=[dd11];                               %  the sginal
Data12=[dd12];                              %|
XOR11 =xor(Code1,Data1)   %<---xor1          |
XOR12 =xor(Code1,Data12);  %<---xor2         |
                                 %<----------/
U1SM=[XOR11 XOR12]    %<---User#1 spread message 8Chips
subplot(2,2,1)
stairs(U1SM,'LineWidth',2);
title('User1')
xlabel('Code')
ylabel('Data')

%----------------------------- USER#2 ----------------------------------
'--------------------- USER#2 ---------------------'
D2=[1 0];  %<---DATE  2Bits to send 
C2=[0 0 1 1];  %<---Spreading CODE (Used code) Diffrent code

d21=D2(1);
dd21=[d21 d21 d21 d21];
d22=D2(2);
dd22=[d22 d22 d22 d22];
Code2=[C2];
Data21=[dd21];
Data22=[dd22];
XOR21 =xor(Code2,Data21)   %<---xor1 
XOR22 =xor(Code2,Data22)   %<---xor2 

U2SM=[XOR21 XOR22]    %<---User#2 spread message 8Chips
subplot(2,2,2)
stairs(U2SM,'LineWidth',2);
title('User2')
xlabel('Code')
ylabel('Data')

%----------------------------- USER#3 ----------------------------------
'--------------------- USER#3 ---------------------'
D3=[1 1];  %<---DATE  2Bits to send 
C3=[0 0 0 0];  %<---Spreading CODE (Used code) Diffrent code

d31=D3(1);
dd31=[d31 d31 d31 d31];
d32=D3(2);
dd32=[d32 d32 d32 d32];
Code3=[C3];
Data31=[dd31];
Data32=[dd32];
XOR31 =xor(Code3,Data31)   %<---xor1 
XOR32 =xor(Code3,Data32)   %<---xor2 

U3SM=[XOR31 XOR32]    %<---User#3 spread message 8Chips
subplot(2,2,3)
stairs(U3SM,'LineWidth',2);
ylim([0 1])
title('User3')
xlabel('Code')
ylabel('Data')

%----------------------------- combing all 3 signals ----------------------------------
'-------------- combing all 3 signals --------------'

cas=[(U1SM*-2+1)+(U2SM*-2+1)+(U3SM*-2+1)]      %<---combing all 3 signal called Compisitns wareforms
subplot(2,2,4)
stairs(cas,'LineWidth',2);
ylim([-3 3])
title('combing all 3 signal')
xlabel('Code')
ylabel('Data')

%----------------------------- Compisitns wareforms ----------------------------------
'-------------- Compisitns wareforms --------------'

'--------------------- USER#1 ---------------------'
C1R=[C1 C1];        %<---Code1 repeated twice
RU1D=[cas.*(C1R*-2+1)];   %<---Retrieval the original User#1 data
TOD1=[sum(RU1D([1:4]))/4,sum(RU1D([5:8]))/4]   %<---the original data1
FOD1=(TOD1-1)/-2         %<---Final original data1

'--------------------- USER#2 ---------------------'
C2R=[C2 C2];        %<---Code2 repeated twice
RU2D=[cas.*(C2R*-2+1)];   %<---Retrieval the original User#2 data
TOD2=[sum(RU2D([1:4]))/4,sum(RU2D([5:8]))/4]   %<---the original data2
FOD2=(TOD2-1)/-2         %<---Final original data2

'--------------------- USER#3 ---------------------'
C3R=[C3 C3];        %<---Code3 repeated twice
RU3D=[cas.*(C3R*-2+1)];   %<---Retrieval the original User#3 data
TOD3=[sum(RU3D([1:4]))/4,sum(RU3D([5:8]))/4]   %<---the original data3
FOD3=(TOD3-1)/-2         %<---Final original data3


p=input('\n Do you want to Exit of The Programe yes/no (y/n):','s');  
if     strcmp (p,'y')                  
       break                     
end
end
'by ENG.Ibrahim ahmed aljrdan'
