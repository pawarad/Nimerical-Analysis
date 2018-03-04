function [a]=my_frank(n)
a= zeros(n);
%Creating the first row of the required matrix
for i=0:n-1
    a(1,i+1)=n-i;
end
b=n;
n=n-1;
j=1;

%Creating the rest of the matrix
while n>0
    a(j+1,j)=n;
    for k=j+1:b
        a(j+1,k)=b-(k-1);
        
    end
    j=j+1;
    n=n-1;
end
return;
end
