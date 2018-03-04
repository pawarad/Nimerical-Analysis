function test_thomas_algo(n)

%the conditon for the matrix to be stable is if the sum of the other 2 diagonal are
%less than sum of main diagonal
b=50*rand(n,1)+100;
a=50*rand((n-1),1);
c=50*rand((n-1),1);

f=100*rand(n,1)
A = diag(b,0) + diag(a,-1) + diag(c,1)

y= my_thomas_algo(A,f);
fprintf('The solution obtained is \n');
y
fprintf('The solution obtained is\n ');
A\f

%y=A\f

%Testing condition
tol=1e-7;
%We have to test if
e=norm(f-A*y);
if e<tol
    fprintf('The solution is within acceptable limit');
else
    fprintf('The solution is not  acceptable limit');
end
