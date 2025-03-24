function trainFR = computeFR(train,n)
time=train(end,1)-train(1,1);
trainFR=zeros(n,1);
[GC,GR] = groupcounts(train(:,2));
trainFR(GR)=GC;
trainFR=trainFR/time;
end