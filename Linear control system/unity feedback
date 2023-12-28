     
%              Ea(s)         s + 1    U(s)           1
%     R(s)--->O---->[Gc(s)= ------- ]----->[G(s)= --------- ]---+---> Y(s) 
%             |              s + 2                500  s^2      |
%             +---------<---------<----------<--------<---------+            

numg2=[1];deng2=[500 0 0];sysg2=tf(numg2,deng2);   %<--- G(s)
numh2=[1 1];denh2=[1 2];sysh2=tf(numh2,denh2);   %<--- Gc(s)
sys_series1=series(sysg2,sysh2);
sys_feedback=feedback(sys_series1,[1])
