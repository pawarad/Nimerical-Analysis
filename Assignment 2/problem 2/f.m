function [z] = f(x)
   %put the 4 equations in 4*1 matrix 
  %lets consider x1=x(1);x2=x(2);x3=x(3);x4=x(4)
z = zeros(4,1); %4*1 matrix

z(1)= x(1)+x(2)+x(3)+x(4)-2.5;
z(2)= x(1)*(x(2)+x(3)+x(4))+x(2)*(x(3)+x(4))+x(3)*x(4)-2.76;
z(3)= x(1)*x(2)*(x(3)+x(4))+x(3)*x(4)*(x(1)+x(2))-0.52;
z(4)= x(1)*x(2)*x(3)*x(4)+0.48;

end