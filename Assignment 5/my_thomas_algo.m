function[y]= my_thomas_algo(A,f)
%This functions solves the equation Ay=f ,where A is atridiagonal matrix
%using thomas algorithm


x=size(A);%to get the size of array
n=x(1);

v = zeros(n,1);

fprintf('The diagonal elements of the given matrix in vector form are');
b=diag(A)
a=diag(A,-1)
c=diag(A,1)

y = v;
w = b(1);
y(1) = f(1)/w;
for i=2:n  %loop for thomas alorithm
    v(i-1) = c(i-1)/w;
    w = b(i) - a(i-1)*v(i-1);
    y(i) = ( f(i) - a(i-1)*y(i-1) )/w;
end
for j=n-1:-1:1
   y(j) = y(j) - v(j)*y(j+1);
end


end