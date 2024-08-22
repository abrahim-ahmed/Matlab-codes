
%                          S+1    U(s)          1
%         R(s)--->[Gc(s)= ----- ]------>[G(s)= ------- ]----> Y(s)   
%                          S+2                500 s^2
%                            
numg=[1];deng=[500 0 0];sysg=tf(numg,deng);   %<--- G(s)
numh=[1 1];denh=[1 2];sysh=tf(numh,denh);   %<--- Gc(s)
sys_series=series(sysg,sysh);
sys_series
