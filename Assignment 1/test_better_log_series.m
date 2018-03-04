function test_better_log_series
%program to test if the value obtained from better_log and the log
%function in matlab matches
tol=1e-7;
t=10;
for n=1:10
    x=t*rand();
    t=t*10;
    y=better_log_series(x);
    diff=log(x)-y;
    if(abs(diff)<tol)
        fprintf('The difference obtained from the program and the inbuilt log function for the value %f\n are within tolerable limit\n',x)
    else
        fprintf('The difference obtained from the program and the inbuilt log function for the value %f\n are not within tolerable limit\n',x)
    end
end