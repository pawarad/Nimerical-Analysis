function test_my_tanh() 
%function to plot the error graph between the value of my fucntion and
%builtin MATLAB tanh fucntion
err = [];
i=1;
x = 1e-10
while (x < 1e10)
    y = my_tanh(x);
    n = tanh(x);
    err(i)= (y-n)/n;
    i=i+1;
    x=x*1.0002;
end
plot(err)
%x[0.1,100]
%y[-1,1]
end