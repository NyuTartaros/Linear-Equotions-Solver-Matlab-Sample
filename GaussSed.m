A=A_copy;  b=b_copy;
epi=1e-6;
D=zeros(10,10);
L=zeros(10,10);
U=zeros(10,10);
for i=1:10
    for j=1:i-1
        L(i,j)=-A(i,j);
    end
    D(i,i)=A(i,i);
    for j=i+1:10
        U(i,j)=-A(i,j);
    end
end
M=D-L; G=((D-L)^-1)*U;
x0=ones(10,1);
x0=x0/norm(x0);
x1=G*x0+(M^-1)*b;
while(norm(x1-x0)>=epi)
    x0=x1;
    x1=G*x0+M'*b;
end
x1