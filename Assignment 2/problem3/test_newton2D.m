function test_newton2D()
  
   %intialize the root with complex roots. 
   x0 = [0.1;0.1;0.1;35]
    tol = 1e-8;
    
    x = newton2D(@f,@jacobian,x0,1e-8);
    
    fprintf('x1 = %f,x2 = %f,x3 = %f,x4 = %f\n',x(1),x(2),x(3),x(4));
    S = x(1)^2+x(2)^2+x(3)^2;
    fprintf('The sum of the square of coordinates is %f/n',S)%Sum of coordinates (x^2+y^2+z^2) should be equal to 1.
    return
end