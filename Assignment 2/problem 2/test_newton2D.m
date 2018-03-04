function test_newton2D()
  
   %intialize the root with complex roots. 
   x0 = [complex(1,3);complex(3,2);complex(1,2);complex(1,1)];
    tol = 1e-8;
    
    x = newton2D(@f,@jacobian,x0,1e-8);
    
    fprintf('x1 = %f+%fi,x2 = %f+%fi,x3 = %f+%fi,x4 = %f+%fi\n',real(x(1)),imag(x(1)),real(x(2)),imag(x(2)),real(x(3)),imag(x(3)),real(x(4)),imag(x(4)));
end