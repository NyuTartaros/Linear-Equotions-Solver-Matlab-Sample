function XGP=GASSEM(A_)   %expended matrix
A=A_;
for i=1:9 %column
    for j=i+1:10 %row
        k=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-A(i,:).*k;
    end
end
for i=10:2
    for j=i-1:1
        k=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-A(i,:).*k;
    end
end
for i=1:10
    A(i,:)=A(i,:)./A(i,i);
end
XGP=A(:,11);