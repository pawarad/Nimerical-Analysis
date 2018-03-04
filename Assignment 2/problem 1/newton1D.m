function newton1D

%initialize computation
%consider initial root x=0.5 and tol=1e-5;
L=2.5;
x=0.5;
tol=1e-5;

  % Do root finding in a loop to prevent infinite loops
  % from nonconvergence
for i=1:100;
    fx=(0.75-0.25*cos(x))^2+(1.25*sin(x))^2-0.9025;
    df=2*(0.75-0.25*cos(x))*0.25*sin(x) + 2*(1.25*sin(x))*1.25*cos(x);
    delta = -fx\df;
    x=x+delta; 
      fprintf('the angle is x=%16.12f, delta=%16.12f\n',x,delta)
      
      % Check if we're close enough to quit yet
    % Check if delta is less than tol
    if abs(delta) < tol
         fprintf('Terminating after %d iterations because norm(delta) < tol.\n', i)
         break;
    end
    H = 2*L*sin(x);%To find the Height when the piston is fully up.
    fprintf('The height of crank when piston is up is %f\n',H)
    return
   end
end
  