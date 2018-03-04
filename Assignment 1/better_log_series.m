function [y] = better_log_series(x)
%ln(x)=ln(a) + [(x-a) / a ]- [(x-a)^2 / (2a^2)] + [(x-a)^3 / (3a^3)] - [(x-a)^4 / (4a^4)] + ... for 0<x<2a 
logact = log(x) %built in MATLAB function
%initialize computation
lg2 = log(2);
p2 = 0;
y = 0;
s = 1;
t = 1;
%compute terms inside the loops
if (x>0)
    while (x>1.8)
        x=x/2;
        p2=p2+lg2;
    end
        for n = 1:1000
         t = t*(x-1);
         y = y + s*t/n;
         s = -s;
     end
    y=y+p2;
    else
        error('the entered value is less than zero');
end
    
    