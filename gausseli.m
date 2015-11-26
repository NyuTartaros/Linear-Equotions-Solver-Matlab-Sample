%A=A_copy;  b=b_copy;
for i=1:9 %column
    for j=i+1:10 %row
        k=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-A(i,:).*k;
        b(j)=b(j)-b(i)*k;
    end
end
for i=10:2
    for j=i-1:1
        k=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-A(i,:).*k;
        b(j)=b(j)-b(i)*k;
    end
end
for i=1:10
    b(i)=b(i)/A(i,i);
    A(i,:)=A(i,:)./A(i,i);
end
b
