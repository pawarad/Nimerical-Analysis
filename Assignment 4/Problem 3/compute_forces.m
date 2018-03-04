function compute_forces(w,a)
%initializing
A=zeros(8); %Create a 8*8 zero matrix
c=cos(a); %cos(thetha)
s=sin(a); %sin(thetha)

%After getting the 8 equations only filling the non zero values in the
%matrix
A(1,1)=-c; A(1,2)=-1; A(1,6)=1;
A(2,1)=-s; A(2,7)=1;
A(3,1)=c; A(3,4)=-c;
A(4,1)=s; A(4,3)=1; A(4,4)=s;
A(5,2)=1; A(5,5)=-1;
A(6,3)=1;
A(7,4)=c; A(7,5)=1;
A(8,4)=s; A(8,8)=-1;

f=zeros(8);% initialize all the forces as zero matrix

%initializing the matrix for load w=12 given in the sum.We have to check if
%the brigde will collapse or not for w=12.
%Explanation in read.me file
W=[0 0 0 0 0 w 0 0]';

%Computing the forces acting on the bridge
f = A\W
return
end

