function Filter =My_filter(Roww,Coll)
Row=ceil(Roww/2);Col=ceil(Coll/2);
D_0=50;
Filter=zeros(Roww,Coll);
for m=1:Roww
    for n=1:Coll
        if((m-Row)^2+(n-Col)^2)^0.5<=D_0
            Filter(m,n)=255;
        end
    end
end%Filter = 255-Filter; can be tried
end