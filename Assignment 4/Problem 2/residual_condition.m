function residual_condition
%It is used to plat the condition number and the residual of a Frank matrix
%against its dimension

for n=2:21
    x=ones(n,1);
    F=my_frank(n);
    c=cond(F)
    b=F*x;
    xc=F\b;
    r=norm(x-xc)
    semilogy(n,r,'bx');
    axis
    hold on
    semilogy(n,c,'ro');
    
end
 n=norm(c-r)
end
