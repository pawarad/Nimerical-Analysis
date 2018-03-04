function [y] = log_series(x)
%log(x) = (x-1)-(x-1)^2/2+(x-1)^3/3-.....
%log(x) = (x-1/x)+(x-1/x)^2/2+(x-1/x)^3/3+.....

%initialize computation
y = 0;
s = 1;
t = 1;
tol = 1e-7;
yold = y;

 %Now compute terms inside loop.
 if (x>=0 && x<=3/4)
 for n = 1:500
     t = t*(x-1);
     y = y + s*t/n;
     yold = y;
     s = -s;
     
 end
 elseif (x>3/4)
     for n = 1:500
     t = t*((x-1)/x);
     y = y + s*t/n;
     yold = y;
    
     end
     
     %See if we are ready to stop summing
     if (abs(yold-y)<tol)
         %fptintf ('---- Converged! ----/n')
         return
     else
     error('---- Failed to Converge ----\n')
     end
 end

     
