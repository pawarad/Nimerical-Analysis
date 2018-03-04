function [y] = my_tanh(x)
ea = exp(x); %exponential function
ei = 1/ea;
y = (ea-ei)/(ea+ei);
%n = tanh(x);
%err = (y - n)/n;
end

