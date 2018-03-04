function test_log_series()
  % This runs the function log_series()for inputs over a range, and
  % checks its return against that from MATLAB.If the difference
  % is larger than 1e-6, then it errors out.

for x = 2:70
    tol = 1e-6;
    y_comp = log_series(x);
    y_true = log(x);
    diff =  y_comp - y_true;
    fprintf('x = %20.18e, y_comp = %20.18e, y_true = %20.18e, diff = %20.18e\n', x, y_comp, y_true, diff)
     if (abs(diff) < tol)
         fprintf('---  Test passed!  Success!  ----\n')
     else
         fprintf('Error is too large!!!\n')
     end
end