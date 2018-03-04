function x = newton2D(f,jacobian,x0,tol)
  % This fcn implements 2D root finding via Newton's method
  % fn is a function handle, fn takes a vector input and returns a vector output
  % Jn is a function handle to the Jacobian.Jn takes a vector input (x,y,z,t)
  % and returns the Jacobian matrix.
  % x0 is the initial guess
  % tol is the desired tolerance.
  
  % Do root finding in a loop to prevent infinite loops
  % from nonconvergence
  
  for i = 1:100
    fnp1 = f(x0);
    Jnp1 = jacobian(x0);
    delta = -Jnp1\fnp1;
    x0 = x0+delta;
    x = x0;
     fprintf('delta = [%16.12f, %16.12f,%16.12f, %16.12f] x = [%16.12f, %16.12f,%16.12f, %16.12f]\n',delta(1),delta(2),delta(3),delta(4),x(1),x(2),x(3),x(4));
     
     % Check if we're close enough to quit yet
    % Check if delta is less than tol
    if abs(delta) < tol
         fprintf('Terminating after %d iterations because norm(delta) < tol.\n', i)
      return
    end
  end
  
  fprintf('Terminated without convergence!\n')
x = [nan,nan,nan,nan];
