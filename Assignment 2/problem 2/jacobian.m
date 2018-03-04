function [z]=jacobian(x)
  %put the 16 jacobian equations in 4*4 matrix 
  %lets consider x1=x(1);x2=x(2);x3=x(3);x4=x(4);
  
  
z = zeros(4,4);%create return as 4*4 matrix
  z(1,1)= 1;
  z(1,2)= 1;
  z(1,3)= 1; 
  z(1,4)= 1;
  z(2,1)= x(2)+x(3)+x(4);
  z(2,2)= x(1)+x(3)+x(4);
  z(2,3)= x(1)+x(2)+x(4);
  z(2,4)= x(1)+x(2)+x(3);
  z(3,1)= x(2)*x(3)+x(2)*x(4)+x(3)*x(4);
  z(3,2)= x(1)*x(3)+x(1)*x(4)+x(3)*x(4);
  z(3,3)= x(1)*x(2)+x(1)*x(4)+x(2)*x(4);
  z(3,4)= x(1)*x(2)+x(1)*x(3)+x(2)*x(3);
  z(4,1)= x(2)*x(3)*x(4);
  z(4,2)= x(1)*x(3)*x(4);
  z(4,3)= x(1)*x(2)*x(4);
  z(4,4)= x(1);x(2);x(3);

end