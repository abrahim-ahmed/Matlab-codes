
%              Ea(s)             1
%     R(s)--->O---->[Gc(s)= ---------- ]-----+---> Y(s) 
%             |              500  s^2        |
%             |                              |
%             |              s + 1           |
%             +-----[H(s)= ---------]<-------+
%                            s + 2
numg3=[1];deng3=[500 0 0];sysg3=tf(numg3,deng3);   %<--- G(s)
numh3=[1 1];denh3=[1 2];sysh3=tf(numh3,denh3);   %<--- Gc(s)
sys_feedback1=feedback(sysg3,sysh3);
sys_feedback1
