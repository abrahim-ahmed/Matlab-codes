
% R = feedback(G(s),H(s)): 
%                    
%         R(s)--->O---->[  System1 ]----+---> Y(s)        Y(s)
%                 |       Gc(s)G(s)     |          T(s)= ----- = 1/ts+1
%                 +-----<-------<-------+                 U(s)

numg1=[1];deng1=[500 0 0];sysg1=tf(numg1,deng1);   %<--- G(s)
numh1=[1 1];denh1=[1 2];sysh1=tf(numh1,denh1);   %<--- Gc(s)
sys_Parallel=parallel(sysg1,sysh1);
sys_Parallel
