function my_qr_backsub(N)

% This function finds the solution for a Ax=b by using QR subsitution on A
% and making a back subsitution of Rx=Q'b since inv(Q)=Q' which fulfils the
% requirement given in the question

A=100*rand(N);
b=100*rand(N,1);
x=zeros(N,1);

[Q,R]=qr(A);%built in function
B=Q'*b;
x(N)=B(N)/R(N,N);

%loop for back subsitution
for i=N-1:-1:1  
    s=0;
    for j=i+1:N
        s=s+R(i,j)*x(j);
        
   end
    x(i)= (B(i)-s)/R(i,i)
    i=i-1;
end

%Testing conditions
tol=1e-7; %tolerance limit

e=norm(x-A\b)
if e<tol
    fprintf('Pass!\n');
else
    fprintf('Fail!\n');
end

end