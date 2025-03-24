function Es = computedistribution(Indentations,Sn)

%get the data
t1=Indentations.(Sn).T1;
t2=Indentations.(Sn).T2;
t=[t1; t2];

%model the motor mesh
l=9.24;%mm
A=2*sqrt(3)*l;
B=3*l;
xyz=createmotormesh(A,B,0); %switch to 1 for visualization

%compute the distances
Es=[];
for i=1:length(t)
    target=xyz(t(i,1),:);
    guess=xyz(t(i,2),:);
    E=target-guess;
    Es=[Es; E];
end

end